using System;
using System.Collections.Generic;
using System.Xml;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: XmlHelper类
    ///Description:Xml操作工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class XmlHelper
    {
        public static string[] GetAllStringField(string filePath)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            XmlNodeList list = document.SelectNodes("/fields/field[@datatype='string']");
            string[] strArray = new string[list.Count];
            for (int i = 0; i < list.Count; i++)
            {
                strArray[i] = list[i].Attributes["value"].Value;
            }
            return strArray;
        }

        public static string GetFieldDataType(string filePath, string fieldKey)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            return document.SelectSingleNode("/fields/field[@key='" + fieldKey + "']").Attributes["datatype"].Value;
        }

        public static IList<QueryCondition> GetQueryCondition(string filePath)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            XmlNodeList list = document.SelectNodes("/Items/Item");
            IList<QueryCondition> list2 = new List<QueryCondition>();
            foreach (XmlNode node in list)
            {
                QueryCondition condition = new QueryCondition();
                condition.Key = node.Attributes["key"].Value;
                condition.Value = node.Attributes["value"].Value;
                condition.Text = node.Attributes["text"].Value;
                condition.Type = node.Attributes["type"].Value;
                list2.Add(condition);
            }
            return list2;
        }

        public static QueryCondition GetQueryConditionByKey(string filePath, string key)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            XmlNode node = document.SelectSingleNode("/Items/Item[@key='" + key + "']");
            QueryCondition condition = new QueryCondition();
            condition.Key = node.Attributes["key"].Value;
            condition.Value = node.Attributes["value"].Value;
            condition.Text = node.Attributes["text"].Value;
            condition.Type = node.Attributes["type"].Value;
            return condition;
        }

        public static string GetValueByXPath(string filePath, string xPath)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            return document.SelectSingleNode(xPath).Attributes["value"].Value;
        }

        public static string GetValueByXPath(string filePath, string xPath, string attribute)
        {
            XmlDocument document = new XmlDocument();
            document.Load(filePath);
            return document.SelectSingleNode(xPath).Attributes[attribute].Value;
        }
    }
}
