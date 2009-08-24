

using System;
using System.Runtime.Serialization;

///========================================================================
/// Project: 控件显示测试	
/// Copyright: Copyright (c) 2009
/// Company: 长沙东君信息科技有限公司DJKJ Tech LTD.,Changsha( 研制开发)
///========================================================================

namespace gv.Data
{
	/// <summary>
	///Title: SysShowconfig类
	///Description:显示控件配置表 数据表实体模型代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class SysShowconfig
	{	
		private string _xsid = String.Empty;
		private string _tableid = String.Empty;
		private string _fielename = String.Empty;
		private string _fieldnamech = String.Empty;
		private int _maxlength;
		private int _sort;
		private string _ispk = String.Empty;
		private string _isshow = String.Empty;
		private string _isselect = String.Empty;
		private string _isinttype = String.Empty;
		private string _isfk = String.Empty;
		private string _fktablename = String.Empty;
		private string _fktablepk = String.Empty;
		private string _fktablefield = String.Empty;
		private int _pxh;
		
		/// <summary>
		/// 显示编号
		/// </summary>
		[DataMember]
		public string Xsid
		{
			get { return _xsid; }
			set { _xsid = value; }
		}

		/// <summary>
		/// 表编号
		/// </summary>
		[DataMember]
		public string Tableid
		{
			get { return _tableid; }
			set { _tableid = value; }
		}

		/// <summary>
		/// 字段英文名
		/// </summary>
		[DataMember]
		public string Fielename
		{
			get { return _fielename; }
			set { _fielename = value; }
		}

		/// <summary>
		/// 字段中文名
		/// </summary>
		[DataMember]
		public string Fieldnamech
		{
			get { return _fieldnamech; }
			set { _fieldnamech = value; }
		}

		/// <summary>
		/// 字段最大显示长度
		/// </summary>
		[DataMember]
		public int Maxlength
		{
			get { return _maxlength; }
			set { _maxlength = value; }
		}

		/// <summary>
		/// 字段排序
		/// </summary>
		[DataMember]
		public int Sort
		{
			get { return _sort; }
			set { _sort = value; }
		}

		/// <summary>
		/// 是否主键
		/// </summary>
		[DataMember]
		public string Ispk
		{
			get { return _ispk; }
			set { _ispk = value; }
		}

		/// <summary>
		/// 是否显示
		/// </summary>
		[DataMember]
		public string Isshow
		{
			get { return _isshow; }
			set { _isshow = value; }
		}

		/// <summary>
		/// 是否查找
		/// </summary>
		[DataMember]
		public string Isselect
		{
			get { return _isselect; }
			set { _isselect = value; }
		}

		/// <summary>
		/// 是否自增列
		/// </summary>
		[DataMember]
		public string Isinttype
		{
			get { return _isinttype; }
			set { _isinttype = value; }
		}

		/// <summary>
		/// 是否外键
		/// </summary>
		[DataMember]
		public string Isfk
		{
			get { return _isfk; }
			set { _isfk = value; }
		}

		/// <summary>
		/// 外键链接的表名
		/// </summary>
		[DataMember]
		public string Fktablename
		{
			get { return _fktablename; }
			set { _fktablename = value; }
		}

		/// <summary>
		/// 外键表的主键
		/// </summary>
		[DataMember]
		public string Fktablepk
		{
			get { return _fktablepk; }
			set { _fktablepk = value; }
		}

		/// <summary>
		/// 链接外键表的字段
		/// </summary>
		[DataMember]
		public string Fktablefield
		{
			get { return _fktablefield; }
			set { _fktablefield = value; }
		}

		/// <summary>
		/// 排序号
		/// </summary>
		[DataMember]
		public int Pxh
		{
			get { return _pxh; }
			set { _pxh = value; }
		}

	}
}
