using OfficeOpenXml;
using System.Reflection;

namespace Helpers.Excel.Extra
{
    public abstract class ExcelBase<T> : IDisposable
    {
        protected ExcelBase(Stream stream, AccessType accessType)
            : this(accessType)
        {
            _stream = stream;
        }

        private ExcelBase(AccessType accessType)
        {
            var type = typeof(T);
            PropertyInfos = TypeHelper.GetTypeProperties(type);

            _sheetName = $"{type.Name}-data";
            TableName = $"{type.Name}_table";

            _basePosition = new Tuple<int, int>(BaseRow, BaseColumn);

            AccessUsed = accessType;
        }

        protected const string DateLongFormat = @"yyyy\-MM\-dd HH:mm:ss.000";
        protected const string DateShortFormat = @"yyyy\-MM\-dd";
        protected const string DefaultFont = "Candara";
        protected const float DefaultSize = 10f;
        protected const string HeaderDefaultFont = "Candara";
        protected const float HeaderDefaultSize = 15f;

        protected Dictionary<string, PropertyInfo> PropertyInfos;

        protected string TableName;

        private const int BaseColumn = 1;
        private const int BaseRow = 1;

        private readonly Tuple<int, int> _basePosition;

        private ExcelWorkbook _book;
        private ExcelPackage _package;
        private ExcelAddressBase _range;
        private string _sheetName;
        private Stream _stream;
        private ExcelWorksheets _worksheets;

        protected enum AccessType
        {
            Unknown,
            Read,
            Write
        }

        protected ExcelAddressBase Range
        {
            get
            {
                if (AccessUsed == AccessType.Write)
                    return _range;
                throw new InvalidOperationException($"cannot access {nameof(Range)} in this context !");
            }
            private set
            {
                _range = value;
            }
        }

        private AccessType AccessUsed
        {
            get;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                _worksheets = null;
                _book?.Dispose();
                _book = null;

                _package?.Dispose();
                _package = null;

                _stream?.Dispose();
                _stream = null;

                PropertyInfos.Clear();
                PropertyInfos = null;

                _sheetName = null;
                TableName = null;
            }
        }

        protected ExcelWorksheet OpenOrCreateSheet()
        {
            var sheet = _worksheets.FirstOrDefault(s => string.Equals(s.Name, _sheetName, StringComparison.OrdinalIgnoreCase));

            switch (AccessUsed)
            {
                case AccessType.Read:
                    return sheet;

                case AccessType.Write:
                    return sheet ?? _worksheets.Add(_sheetName);

                default:
                    return null;
            }
        }

        protected void OpenWorkBook(int? itemCount)
        {
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
            _package = new ExcelPackage(_stream);
            _book = _package.Workbook;
            _worksheets = _book.Worksheets;

            switch (AccessUsed)
            {
                case AccessType.Read:
                    if (itemCount.HasValue)
                        throw new InvalidOperationException($"cannot open workbook with {nameof(itemCount)} specified in this context !");
                    return;

                case AccessType.Write:
                    if (!itemCount.HasValue)
                        throw new InvalidOperationException($"cannot create workbook with null {nameof(itemCount)} in this context !");
                    Range = DefaultTableRange(itemCount.Value);
                    break;

                default:
                    throw new InvalidOperationException($"cannot open workbook with {nameof(itemCount)} specified in this context !");
            }
        }

        protected void SaveWorkBook()
        {
            if (AccessUsed != AccessType.Write)
                throw new InvalidOperationException($"cannot access {nameof(SaveWorkBook)} in this context !");

            _book.Properties.Author = Environment.MachineName;
            _book.Properties.Title = $"Automated export of {typeof(T).Name}";
            _book.Properties.Subject = "data export";
            _book.Properties.Created = DateTime.UtcNow;

            _package.Compression = CompressionLevel.BestCompression;
            _stream.Seek(0, SeekOrigin.Begin);
            _package.Save();
        }

        private ExcelAddressBase DefaultTableRange(int itemCount)
        {
            return new ExcelAddressBase(_basePosition.Item1, _basePosition.Item2, _basePosition.Item1 + itemCount, _basePosition.Item2 + PropertyInfos.Count - 1);
        }
    }
}
