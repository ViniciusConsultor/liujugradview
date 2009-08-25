

using System;
using System.Runtime.Serialization;

///========================================================================
/// Project: GradView	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)
///========================================================================

namespace GradView.Library.Data
{
	/// <summary>
	///Title: SysKeys类
	///Description:字典管理表 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-25
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class SysKeys
	{	
		private string _keytableid = String.Empty;
		private string _keytablename = String.Empty;
		private string _keytablenamech = String.Empty;
		private string _keytableselect = String.Empty;
		private int _sort;
		
		/// <summary>
		/// 字典表编号
		/// </summary>
		[DataMember]
		public string Keytableid
		{
			get { return _keytableid; }
			set { _keytableid = value; }
		}

		/// <summary>
		/// 字典表名
		/// </summary>
		[DataMember]
		public string Keytablename
		{
			get { return _keytablename; }
			set { _keytablename = value; }
		}

		/// <summary>
		/// 字典表中文名
		/// </summary>
		[DataMember]
		public string Keytablenamech
		{
			get { return _keytablenamech; }
			set { _keytablenamech = value; }
		}

		/// <summary>
		/// 字典表查询
		/// </summary>
		[DataMember]
		public string Keytableselect
		{
			get { return _keytableselect; }
			set { _keytableselect = value; }
		}

		/// <summary>
		/// 排序
		/// </summary>
		[DataMember]
		public int Sort
		{
			get { return _sort; }
			set { _sort = value; }
		}

	}
}
