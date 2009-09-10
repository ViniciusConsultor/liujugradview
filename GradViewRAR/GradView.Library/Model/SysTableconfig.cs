

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
	///Title: SysTableconfig类
	///Description:表配置信息 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-29
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class SysTableconfig
	{	
		private string _tableid = String.Empty;
		private string _tablename = String.Empty;
		private string _tablenamech = String.Empty;
		private string _showstyle = String.Empty;
		private string _editstyle = String.Empty;
		private string _isdel = String.Empty;
		private string _isedit = String.Empty;
		private string _ispage = String.Empty;
		private string _isallselect = String.Empty;
		private string _issort = String.Empty;
		private string _iscustomcolumn = String.Empty;
		private string _customcolumnname = String.Empty;
		private int _ipxh;
		
		/// <summary>
		/// 表编号
		/// </summary>
		[DataMember(Name="tableid")]
		public string Tableid
		{
			get { return _tableid; }
			set { _tableid = value; }
		}

		/// <summary>
		/// 表英文名
		/// </summary>
		[DataMember(Name="tableName")]
		public string Tablename
		{
			get { return _tablename; }
			set { _tablename = value; }
		}

		/// <summary>
		/// 表中文名
		/// </summary>
		[DataMember(Name="tableNameCh")]
		public string Tablenamech
		{
			get { return _tablenamech; }
			set { _tablenamech = value; }
		}

		/// <summary>
		/// 表样式
		/// </summary>
		[DataMember(Name="ShowStyle")]
		public string Showstyle
		{
			get { return _showstyle; }
			set { _showstyle = value; }
		}

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Name="EditStyle")]
		public string Editstyle
		{
			get { return _editstyle; }
			set { _editstyle = value; }
		}

		/// <summary>
		/// 是否删除
		/// </summary>
		[DataMember(Name="isDel")]
		public string Isdel
		{
			get { return _isdel; }
			set { _isdel = value; }
		}

		/// <summary>
		/// 是否编辑
		/// </summary>
		[DataMember(Name="isEdit")]
		public string Isedit
		{
			get { return _isedit; }
			set { _isedit = value; }
		}

		/// <summary>
		/// 是否分页
		/// </summary>
		[DataMember(Name="isPage")]
		public string Ispage
		{
			get { return _ispage; }
			set { _ispage = value; }
		}

		/// <summary>
		/// 是否全选
		/// </summary>
		[DataMember(Name="isAllSelect")]
		public string Isallselect
		{
			get { return _isallselect; }
			set { _isallselect = value; }
		}

		/// <summary>
		/// 是否排序
		/// </summary>
		[DataMember(Name="isSort")]
		public string Issort
		{
			get { return _issort; }
			set { _issort = value; }
		}

		/// <summary>
		/// 是否自定义列
		/// </summary>
		[DataMember(Name="isCustomColumn")]
		public string Iscustomcolumn
		{
			get { return _iscustomcolumn; }
			set { _iscustomcolumn = value; }
		}

		/// <summary>
		/// 自定义列名字
		/// </summary>
		[DataMember(Name="CustomColumnName")]
		public string Customcolumnname
		{
			get { return _customcolumnname; }
			set { _customcolumnname = value; }
		}

		/// <summary>
		/// 排序号
		/// </summary>
		[DataMember(Name="ipxh")]
		public int Ipxh
		{
			get { return _ipxh; }
			set { _ipxh = value; }
		}

	}
}
