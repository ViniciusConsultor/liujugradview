using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: DESString类
    ///Description: DESString工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class DESString
    {
        private static string IV = "455DBA6B-1719-45dc-971B-750621FC04DD";
        private static string KEY = "0E8B1C9A-B42C-42a7-A96B-6E67AF70B02F";

        public static string DESDecrypt(string encryptedValue)
        {
            string s = KEY.Substring(0, 8);
            string str2 = IV.Substring(0, 8);
            SymmetricAlgorithm algorithm = new DESCryptoServiceProvider();
            algorithm.Key = Encoding.ASCII.GetBytes(s);
            algorithm.IV = Encoding.ASCII.GetBytes(str2);
            ICryptoTransform transform = algorithm.CreateDecryptor();
            byte[] buffer = Convert.FromBase64String(encryptedValue);
            MemoryStream stream = new MemoryStream();
            CryptoStream stream2 = new CryptoStream(stream, transform, CryptoStreamMode.Write);
            stream2.Write(buffer, 0, buffer.Length);
            stream2.FlushFinalBlock();
            stream2.Close();
            return Encoding.UTF8.GetString(stream.ToArray());
        }

        public static string DESEncrypt(string originalValue)
        {
            string s = KEY.Substring(0, 8);
            string str2 = IV.Substring(0, 8);
            SymmetricAlgorithm algorithm = new DESCryptoServiceProvider();
            algorithm.Key = Encoding.ASCII.GetBytes(s);
            algorithm.IV = Encoding.ASCII.GetBytes(str2);
            ICryptoTransform transform = algorithm.CreateEncryptor();
            byte[] bytes = Encoding.UTF8.GetBytes(originalValue);
            MemoryStream stream = new MemoryStream();
            CryptoStream stream2 = new CryptoStream(stream, transform, CryptoStreamMode.Write);
            stream2.Write(bytes, 0, bytes.Length);
            stream2.FlushFinalBlock();
            stream2.Close();
            return Convert.ToBase64String(stream.ToArray());
        }
    }
}
