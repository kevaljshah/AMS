using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace CN.Cryptography
{
    public class cryptography_function
    {
        public static string encrypt(string query_string)
        {
            string result_encrypt;
            try
            {
                byte[] keyArray;
                byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(query_string);
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(ConfigurationManager.AppSettings["SecurityKey"].ToString()));
                hashmd5.Clear();
                TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
                tdes.Key = keyArray;
                tdes.Mode = CipherMode.ECB;
                tdes.Padding = PaddingMode.PKCS7;
                ICryptoTransform cTransform = tdes.CreateEncryptor();
                byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
                tdes.Clear();
                result_encrypt = Convert.ToBase64String(resultArray, 0, resultArray.Length);
            }
            catch
            {
                result_encrypt = null;
            }
            return result_encrypt;
        }

        public static string decrypt(string query_string)
        {
            string result_decrypt;
            try
            {
                byte[] keyArray;
                byte[] toEncryptArray = Convert.FromBase64String(query_string.Replace(" ", "+"));
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(ConfigurationManager.AppSettings["SecurityKey"].ToString()));
                hashmd5.Clear();
                TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
                tdes.Key = keyArray;
                tdes.Mode = CipherMode.ECB;
                tdes.Padding = PaddingMode.PKCS7;
                ICryptoTransform cTransform = tdes.CreateDecryptor();
                byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
                tdes.Clear();
                result_decrypt = UTF8Encoding.UTF8.GetString(resultArray);
            }
            catch
            {
                result_decrypt = null;
            }
            return result_decrypt;
        }
    }
}