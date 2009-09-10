using System;
using System.IO;
using System.Text;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: FileHelper类
    ///Description: 文件操作工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class FileHelper
    {
        public static void DeleteFile(string fileName)
        {
            File.Delete(fileName);
        }

        public static string ReadFile(string fileName)
        {
            string str = string.Empty;
            if (!File.Exists(fileName))
            {
                throw new FieldAccessException("文件不存在!");
            }
            try
            {
                StreamReader reader = new StreamReader(fileName, Encoding.Default);
                str = reader.ReadToEnd();
                reader.Close();
            }
            catch (Exception exception)
            {
                throw exception;
            }
            return str;
        }

        public static void WriteFile(string content, string fileName)
        {
            try
            {
                FileStream stream = new FileStream(fileName, FileMode.Append);
                StreamWriter writer = new StreamWriter(stream, Encoding.Default);
                writer.Write(content);
                writer.Close();
                stream.Close();
            }
            catch (Exception exception)
            {
                throw exception;
            }
        }
    }
}
