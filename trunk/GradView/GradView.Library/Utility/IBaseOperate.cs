using System;
using System.Collections.Generic;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    ///<summary>
    ///Title: IBaseOperate接口
    ///Description: 数据库操作公共接口
    ///@author 万灵杰
    ///@version 1.0.0.0
    ///@date 2009年7月30日
    ///@modify 
    ///@date 
    /// </summary>
    interface IBaseOperate<T>
    {
        int Delete(T model);
        bool Exists(string id);
        IList<T> GetList();
        T GetModel(string id);
        int Insert(T model);
        int Update(T model);
    }
}
