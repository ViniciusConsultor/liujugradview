using System.Data.Common;

///========================================================================
/// Project: 公共库
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)	
///========================================================================

namespace GradView.Library.Utility
{
    public interface IDataBase
    {
        DbConnection GetConnection();
    }
}
