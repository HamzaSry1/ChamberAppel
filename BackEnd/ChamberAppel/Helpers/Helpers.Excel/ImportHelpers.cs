using System.Data;
using System.Reflection;
using ExcelDataReader;
using Microsoft.AspNetCore.Http;

namespace Helpers.Excel
{
    public static class ImportHelpers
    {
        //Covert from Execl to DataTable
        public static DataTable ReadUploadFileData(IFormFile file)
        {
            using (var stream = file.OpenReadStream())
            using (var reader = ExcelReaderFactory.CreateReader(stream))
            {
                var result = reader.AsDataSet(new ExcelDataSetConfiguration
                {
                    UseColumnDataType = false,
                    ConfigureDataTable = tableReader => new ExcelDataTableConfiguration
                    {
                        UseHeaderRow = true
                    }
                }).Tables[0];

                return result;
            }
        }
        //Covert from DataTable to List
        public static List<T> DataTableToList<T>(DataTable table)
        {
            var list = new List<T>();

            foreach (DataRow row in table.Rows)
            {
                T obj = Activator.CreateInstance<T>();

                foreach (PropertyInfo prop in typeof(T).GetProperties())
                {
                    if (table.Columns.Contains(prop.Name) && row[prop.Name] != DBNull.Value)
                    {
                        if (prop.PropertyType == typeof(Guid))
                        {
                            Guid.TryParse(row[prop.Name].ToString(), out Guid guidValue);
                            prop.SetValue(obj, guidValue);
                        }
                        else
                        {
                            prop.SetValue(obj, Convert.ChangeType(row[prop.Name], prop.PropertyType), null);
                        }
                    }
                }

                list.Add(obj);
            }

            return list;
        }
    }
}
