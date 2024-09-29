using OfficeOpenXml;
using OfficeOpenXml.Table;
using System.Reflection;
using System.Text.Json.Serialization;

namespace Helpers.Excel.Extra
{
    public sealed class ExcelWriter<T> : ExcelBase<T>
    {
        public ExcelWriter(Stream stream)
            : base(stream, AccessType.Write)
        {
        }

        public void WriteData(IReadOnlyCollection<T> collection, string[] keepColumns, string header = "", string footer = "")
        {
            PerformHeaderCleanup(collection, keepColumns);

            OpenWorkBook(collection.Count);
            using (var sheet = OpenOrCreateSheet())
            {
                int nbrcols = WriteHeader(sheet);
                var row = Range.Start.Row;
                foreach (var item in collection)
                    WriteData(sheet, item, ++row);

                sheet.Select(Range.End.Address);
                sheet.Cells.Style.Font.Name = DefaultFont;
                sheet.Cells.Style.Font.Size = DefaultSize;
                sheet.Cells.AutoFitColumns();

                var table = sheet.Tables.Add(Range, TableName);

                table.TableStyle = TableStyles.Medium6;
                if (!string.IsNullOrEmpty(footer))
                {
                    MergedCellForFooter(sheet, collection.Count, nbrcols, footer); ;
                }

                if (!string.IsNullOrEmpty(header))
                {
                    sheet.InsertRow(1, 3);
                    MergedCellForHEader(sheet, nbrcols, header);
                }

                sheet.Select(Range.End.Address);
                sheet.Cells.Style.Font.Name = DefaultFont;
                sheet.Cells.Style.Font.Size = DefaultSize;
                sheet.Cells.AutoFitColumns();
                SaveWorkBook();
            }
        }
        private void MergedCellForHEader(ExcelWorksheet sheet, int colsnbr, string header)
        {
            var cell = sheet.Cells[2, 1, 2, colsnbr];
            cell.Merge = true;
            cell.Value = header;
            sheet.Cells.Style.Font.Name = HeaderDefaultFont;
            sheet.Cells.Style.Font.Size = HeaderDefaultSize;
            sheet.Cells.Style.Font.Bold = true;
            sheet.Cells.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
            sheet.Cells.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
            sheet.Cells.Style.Border.BorderAround(OfficeOpenXml.Style.ExcelBorderStyle.None);
        }
        private void MergedCellForFooter(ExcelWorksheet sheet, int rowsnbr, int colsnbr, string footer)
        {
            int offset = 3;
            var cell = sheet.Cells[rowsnbr + offset, 1, rowsnbr + offset, colsnbr];
            cell.Merge = true;
            cell.Value = footer;
            cell.Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Left;
            cell.Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
        }
        private void PerformHeaderCleanup(IReadOnlyCollection<T> collection, string[] keepColumns)
        {
            var dropThis = PropertyInfos.Select(pair => new
            {
                pair,
                hasValues = collection.Any(x => pair.Value.GetValue(x) != null)
            }).Where(t => !t.hasValues).Select(t => t.pair.Key).ToList();

            var skipped = PropertyInfos.Where(pair => keepColumns.Contains(pair.Value.Name)).Select(p => p.Key).AsEnumerable();
            foreach (var key in dropThis.Where(key => !skipped.Contains(key)))
                PropertyInfos.Remove(key);

            string[] ignoreColumns = PropertyInfos.Where(p => !(p.Value.GetCustomAttribute<JsonIgnoreAttribute>() == null))
                .Select(p => p.Value.Name).ToArray();

            foreach (var key in ignoreColumns)
                PropertyInfos.Remove(key);
        }
        private void WriteData(ExcelWorksheet sheet, T item, int row)
        {
            var column = Range.Start.Column;

            foreach (var pair in PropertyInfos)
            {
                var obj = TypeHelper.ConvertToExcelType(pair.Value.GetValue(item));
                var cell = sheet.Cells[row, column];

                switch (obj)
                {
                    case DateTime date:
                        {
                            var fmt = date == date.Date ? DateShortFormat : DateLongFormat;
                            cell.Style.Numberformat.Format = fmt;
                            cell.Value = date.ToOADate();
                            break;
                        }
                    default:
                        {
                            cell.Value = obj;
                            break;
                        }
                }

                column++;
            }
        }
        private int WriteHeader(ExcelWorksheet sheet, string header = "")
        {
            var column = Range.Start.Column;
            foreach (var p in PropertyInfos)
            {
                var cell = sheet.Cells[Range.Start.Row, column++];
                cell.Value = p.Value.GetCustomAttribute<JsonPropertyNameAttribute>()?.Name ?? p.Key;
                cell.AutoFitColumns();
            }
            return PropertyInfos.Count;
        }
    }
}
