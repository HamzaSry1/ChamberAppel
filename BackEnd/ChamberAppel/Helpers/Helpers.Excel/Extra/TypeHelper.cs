using System.ComponentModel;
using System.Reflection;
using System.Text.Json.Serialization;

namespace Helpers.Excel.Extra
{
    public static class TypeHelper
    {
        internal static object ConvertToExcelType(object value)
        {
            if (value == null)
                return null;

            if (value.GetType().IsEnum)
                return value.ToString();

            if (value is bool || value is DateTime || value is string)
                return value;

            if (!IsNumericType(value))
                return value.ToString();

            if (value is decimal || value is double || value is int || value is short)
                return value;

            return Convert.ChangeType(value, typeof(double));
        }
        internal static DisplayNameAttribute GetDisplayColumnAttribute(MemberInfo property)
        {
            return Attribute.GetCustomAttribute(property, typeof(DisplayNameAttribute)) is DisplayNameAttribute attribute ? attribute : null;
        }
        internal static JsonIgnoreAttribute GetIgnoreColumnAttribute(MemberInfo property)
        {
            return Attribute.GetCustomAttribute(property, typeof(JsonIgnoreAttribute)) is JsonIgnoreAttribute attribute ? attribute : null;
        }
        internal static Dictionary<string, PropertyInfo> GetTypeProperties(IReflect type)
        {
            var result = type.GetProperties(BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public)
            .Where(p => GetIgnoreColumnAttribute(p) == null)
            .ToDictionary(HeaderLabel);

            if (!result.Any())
            {
                result = type.GetProperties(BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public)
                .ToDictionary(HeaderLabel);
            }
            return result;
        }
        private static string HeaderLabel(MemberInfo property)
        {
            return GetDisplayColumnAttribute(property)?.DisplayName ?? property.Name;
        }
        private static bool IsNumericType(object o)
        {
            var type = o.GetType();
            switch (Type.GetTypeCode(type))
            {
                case TypeCode.Byte:
                case TypeCode.SByte:
                case TypeCode.UInt16:
                case TypeCode.UInt32:
                case TypeCode.UInt64:
                case TypeCode.Int16:
                case TypeCode.Int32:
                case TypeCode.Int64:
                case TypeCode.Decimal:
                case TypeCode.Double:
                case TypeCode.Single:
                    return true;

                case TypeCode.Empty:
                case TypeCode.Object:
                    {
                        var innerType = Nullable.GetUnderlyingType(type);
                        return innerType != null && IsNumericType(innerType);
                    }
                case TypeCode.DBNull:
                case TypeCode.Boolean:
                case TypeCode.Char:
                case TypeCode.DateTime:
                case TypeCode.String:
                    return false;

                default:
                    return false;
            }
        }
    }
}
