using System;
using System.Collections.Generic;
using System.IO;
using System.Xml;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: ConfigHelper类
    ///Description: 配置管理工具类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class ConfigHelper
    {
        private string _fileName;
        private XmlDocument xDoc;

        public ConfigHelper()
        {
            this.xDoc = new XmlDocument();
            this._fileName = string.Format("{0}{1}//app.config", AppDomain.CurrentDomain.BaseDirectory, "xml");
            new FileInfo(this._fileName).IsReadOnly = false;
            this.xDoc.Load(this._fileName);
        }

        public ConfigHelper(string fileName)
        {
            this.xDoc = new XmlDocument();
            this._fileName = AppDomain.CurrentDomain.BaseDirectory + fileName;
            new FileInfo(this._fileName).IsReadOnly=false;
            this.xDoc.Load(this._fileName);
        }

        public bool Delete(ConfigInfo config)
        {
            XmlElement oldChild = this.getElement(config.Key);
            if (oldChild != null)
            {
                this.getXmlNode().RemoveChild(oldChild);
                this.xDoc.Save(this._fileName);
                return true;
            }
            return false;
        }

        public bool Exist(string key)
        {
            return (this.getElement(key) != null);
        }

        private XmlElement getElement(string elemName)
        {
            try
            {
                return (XmlElement)this.getXmlNode().SelectSingleNode("//add[@key='" + elemName + "']");
            }
            catch
            {
                return null;
            }
        }

        public IList<ConfigInfo> GetList()
        {
            XmlNodeList list = this.getXmlNodeList();
            IList<ConfigInfo> list2 = new List<ConfigInfo>();
            foreach (XmlNode node in list)
            {
                ConfigInfo info = new ConfigInfo();
                info.Key = node.Attributes["key"].Value;
                info.Name = node.Attributes["name"].Value;
                info.Value = node.Attributes["value"].Value;
                info.Desc = node.Attributes["desc"].Value;
                list2.Add(info);
            }
            return list2;
        }

        public string GetValue(string keyName)
        {
            string attribute = "";
            XmlElement element = this.getElement(keyName);
            if (element != null)
            {
                attribute = element.GetAttribute("value");
            }
            return attribute;
        }

        private XmlNode getXmlNode()
        {
            return this.xDoc.SelectSingleNode("//appSettings");
        }

        private XmlNodeList getXmlNodeList()
        {
            return this.xDoc.SelectNodes("//appSettings//add");
        }

        public bool Insert(ConfigInfo config)
        {
            return ((((config != null) && !string.IsNullOrEmpty(config.Key)) && !this.Exist(config.Key)) && this.SetValue(config, true));
        }

        public bool SetValue(ConfigInfo config, bool bCreate)
        {
            bool flag = true;
            try
            {
                XmlElement newChild = this.getElement(config.Key);
                if (newChild != null)
                {
                    newChild.SetAttribute("value", config.Value);
                    newChild.SetAttribute("name", config.Name);
                    newChild.SetAttribute("desc", config.Desc);
                    this.xDoc.Save(this._fileName);
                    return flag;
                }
                if (bCreate)
                {
                    XmlNode node = this.getXmlNode();
                    newChild = this.xDoc.CreateElement("add");
                    newChild.SetAttribute("key", config.Key);
                    newChild.SetAttribute("value", config.Value);
                    newChild.SetAttribute("name", config.Name);
                    newChild.SetAttribute("desc", config.Desc);
                    node.AppendChild(newChild);
                    this.xDoc.Save(this._fileName);
                }
            }
            catch
            {
                flag = false;
            }
            return flag;
        }

        public bool Update(ConfigInfo config)
        {
            return (((config != null) && !string.IsNullOrEmpty(config.Key)) && this.SetValue(config, false));
        }
    }
}
