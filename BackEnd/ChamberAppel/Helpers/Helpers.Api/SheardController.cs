using Microsoft.AspNetCore.Mvc;
using Helpers.Excel;

namespace Helpers.Api
{
    public static class SheardController
    {
        public static IActionResult DownloadAsExcelFile<T>(this ControllerBase controllerBase, List<T> data, string name, string header = "", string footer = "")
        {
            var bindata = ExportHelpers.ExportToExcel(data, header, footer);
            return controllerBase.File(bindata, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", name + ".xlsx");
        }
    }
}
