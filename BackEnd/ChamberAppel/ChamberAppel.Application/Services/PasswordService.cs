using System.Security.Cryptography;
using System.Text;

namespace ChamberAppel.Application.Services
{
    public static class PasswordService
    {
        public static string Encrypt(string clearText)
        {
            var key = GeneratePassword();
            return EncodePassword(clearText, key);
        }

        public static string GeneratePassword()
        {
            const string allowedChars = "vwxyzABCDEFGHJQ345678RSTUVWXYZ012KLMNOPabcdefghijkmnopqrstu9";
            return allowedChars;
        }

        public static string EncodePassword(string pass, string salt) //encrypt password    
        {
            byte[] bytes = Encoding.Unicode.GetBytes(pass);
            byte[] src = Encoding.Unicode.GetBytes(salt);
            byte[] dst = new byte[src.Length + bytes.Length];
            System.Buffer.BlockCopy(src, 0, dst, 0, src.Length);
            System.Buffer.BlockCopy(bytes, 0, dst, src.Length, bytes.Length);
            HashAlgorithm algorithm = HashAlgorithm.Create("SHA1");
            byte[] inArray = algorithm.ComputeHash(dst);
            //return Convert.ToBase64String(inArray);    
            return EncodePasswordMd5(Convert.ToBase64String(inArray));
        }

        public static string EncodePasswordMd5(string pass) //Encrypt using MD5    
        {
            var md5 = new MD5CryptoServiceProvider();
            var originalBytes = ASCIIEncoding.Default.GetBytes(pass);
            var encodedBytes = md5.ComputeHash(originalBytes);
            //Convert encoded bytes back to a 'readable' string    
            return BitConverter.ToString(encodedBytes);
        }

        public static bool VerifierPassword(string userPassword, string dbPassword)
        {
            var hashedPassword = Encrypt(userPassword);
            if (string.IsNullOrEmpty(userPassword) && string.IsNullOrEmpty(dbPassword))
                return true;
            if (!string.IsNullOrEmpty(userPassword) && !string.IsNullOrEmpty(dbPassword))
                return hashedPassword == dbPassword || userPassword == dbPassword;
            return false;
        }
    }
}
