

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
	///Title: SysFieldconfig类
	///Description:显示控件配置表 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-25
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class SysFieldconfig
	{	
		private string _xsid = String.Empty;
		private string _tableid = String.Empty;
		private string _fielename = String.Empty;
		private string _fieldnamech = String.Empty;
		private int _showmaxlength;
		private int _showsort;
		private string _ispk = String.Empty;
		private string _isshow = String.Empty;
		private string _isselect = String.Empty;
		private string _isinttype = String.Empty;
		private string _isfk = String.Empty;
		private string _fktablename = String.Empty;
		private string _fktablepk = String.Empty;
		private string _fktablefield = String.Empty;
		private string _regextypeid = String.Empty;
		private string _edittypeid = String.Empty;
		private string _regrxtext = String.Empty;
		private string _keytableid = String.Empty;
		private string _isedit = String.Empty;
		private int _editsort;
		private int _editminlength;
		private int _editmaxlength;
		private string _ismust = String.Empty;
		private int _ipxh;
		
		/// <summary>
		/// 显示编号(主键GUID)
		/// </summary>
		[DataMember]
		public string Xsid
		{
			get { return _xsid; }
			set { _xsid = value; }
		}

		/// <summary>
		/// 表编号(sys_TableCOnfig中的编号)
		/// </summary>
		[DataMember]
		public string Tableid
		{
			get { return _tableid; }
			set { _tableid = value; }
		}

		/// <summary>
		/// 字段英文名(在表中的字段英文)
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
		/// 字段最大显示长度(在显示控件中显示长度)
		/// </summary>
		[DataMember]
		public int Showmaxlength
		{
			get { return _showmaxlength; }
			set { _showmaxlength = value; }
		}

		/// <summary>
		/// 在显示控件中字段排序顺序
		/// </summary>
		[DataMember]
		public int Showsort
		{
			get { return _showsort; }
			set { _showsort = value; }
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
		/// 在显示控件中是否显示
		/// </summary>
		[DataMember]
		public string Isshow
		{
			get { return _isshow; }
			set { _isshow = value; }
		}

		/// <summary>
		/// 在显示控件中是否查找
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
		/// 验证类型编号(验证字典表中的值)
		/// </summary>
		[DataMember]
		public string Regextypeid
		{
			get { return _regextypeid; }
			set { _regextypeid = value; }
		}

		/// <summary>
		/// 编辑类型(编辑类型字典表中的值)
		/// </summary>
		[DataMember]
		public string Edittypeid
		{
			get { return _edittypeid; }
			set { _edittypeid = value; }
		}

		/// <summary>
		/// 描术信息
		/// </summary>
		[DataMember]
		public string Regrxtext
		{
			get { return _regrxtext; }
			set { _regrxtext = value; }
		}

		/// <summary>
		/// 字典表编号(连接字典管理表,外键)
		/// </summary>
		[DataMember]
		public string Keytableid
		{
			get { return _keytableid; }
			set { _keytableid = value; }
		}

		/// <summary>
		/// 在编辑控件中是否编辑
		/// </summary>
		[DataMember]
		public string Isedit
		{
			get { return _isedit; }
			set { _isedit = value; }
		}

		/// <summary>
		/// 在编辑控件中排序顺序
		/// </summary>
		[DataMember]
		public int Editsort
		{
			get { return _editsort; }
			set { _editsort = value; }
		}

		/// <summary>
		/// 编辑最小长度
		/// </summary>
		[DataMember]
		public int Editminlength
		{
			get { return _editminlength; }
			set { _editminlength = value; }
		}

		/// <summary>
		/// 编辑最大长度
		/// </summary>
		[DataMember]
		public int Editmaxlength
		{
			get { return _editmaxlength; }
			set { _editmaxlength = value; }
		}

		/// <summary>
		/// 是否必要字段(在编辑控件的时候一定要输入)
		/// </summary>
		[DataMember]
		public string Ismust
		{
			get { return _ismust; }
			set { _ismust = value; }
		}

		/// <summary>
		/// 排序号(自动)
		/// </summary>
		[DataMember]
		public int Ipxh
		{
			get { return _ipxh; }
			set { _ipxh = value; }
		}

	}
}
