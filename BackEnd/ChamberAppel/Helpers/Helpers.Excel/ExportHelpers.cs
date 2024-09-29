using Helpers.Excel.Extra;

namespace Helpers.Excel
{
    public static class ExportHelpers
    {
        public static byte[] ExportToExcel<T>(this List<T> data, string header = "", string footer = "")
        {
            if (data.Any())
            {
                using (var ms = new MemoryStream())
                using (var writer = new ExcelWriter<T>(ms))
                {
                    writer.WriteData(data, new string[] { }, header, footer);
                    return ms.ToArray();
                }
            }
            else
            {
                var nodata = new List<EmptyFile> { new EmptyFile { Erreur = "Aucune donnée" } };
                using (var ms = new MemoryStream())
                using (var writer = new ExcelWriter<EmptyFile>(ms))
                {
                    writer.WriteData(nodata, new string[] { });
                    return ms.ToArray();
                }
            }
        }
    }
    public class EmptyFile
    {
        public string Erreur { get; set; }
    }
}
