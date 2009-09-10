using System;
using System.Collections.Generic;
using System.Text;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: ConfigInfo类
    ///Description: 配置管理实体类
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    public class ConfigInfo
    {
        private string _desc;
        private string _key;
        private string _name;
        private string _value;

        public ConfigInfo()
        {
        }

        public ConfigInfo(string key, string value, string name, string desc)
        {
            this._key = key;
            this._value = value;
            this._name = name;
            this._desc = desc;
        }

        public string Desc
        {
            get { return this._desc; }
            set
            {
                this._desc = value;
            }
        }

        public string Key
        {
            get
            {
                return this._key;
            }
            set
            {
                this._key = value;
            }
        }

        public string Name
        {
            get
            {
                return this._name;
            }
            set
            {
                this._name = value;
            }
        }

        public string Value
        {
            get
            {
                return this._value;
            }
            set
            {
                this._value = value;
            }
        }
    }
}
