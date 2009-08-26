using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace GradView.Library.ControlModel
{
    /// <summary>
    ///Title: ShowFieldConfig类
    ///Description:显示控件在 字段配置表的的配置升级实体类
    ///@author LiuJu
    ///@version 1.0.0.0
    ///@date 2009-8-25
    ///@modify 
    ///@date 
    /// </summary>
    [DataContract]
    public class ShowFieldConfig
    {
        /// <summary>
        /// 字段英文名集合,如UserInfo.xsid,GradeInfo.njmc
        /// </summary>
        [DataMember]
        public string fieldNameArray
        {
            get;
            set;
        }
        /// <summary>
        /// 字段中文集合
        /// </summary>
        [DataMember]
        public string fieldNameChArray
        {
            get;
            set;
        }
        /// <summary>
        /// 最大显示长度集合
        /// </summary>
        [DataMember]
        public string showMaxLengthArray
        {
            get;
            set;
        }
    }
}
