namespace Helpers.Excel.Extra
{
    [AttributeUsage(AttributeTargets.All, Inherited = false, AllowMultiple = true)]
    public sealed class ExcelColumnAttribute : Attribute
    {
        public ExcelColumnAttribute(string label, int order)
        {
            Label = label;
            Order = order;
        }
        public string Label
        {
            get;
        }
        public int Order
        {
            get;
        }
    }
}
