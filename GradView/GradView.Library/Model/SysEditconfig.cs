

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
	///Title: SysEditconfig类
	///Description:字段配置表 数据表实体模型代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class SysEditconfig
	{	
		private string _fieldid = String.Empty;
		private string _tableid = String.Empty;
		private string _fieldname = String.Empty;
		private string _fieldnamech = String.Empty;
		private string _ispk = String.Empty;
		private string _regextypeid = String.Empty;
		private string _edittypeid = String.Empty;
		private string _regrxtext = String.Empty;
		private string _keytableid = String.Empty;
		private string _isedit = String.Empty;
		private int _sort;
		private int _minlength;
		private int _maxlength;
		private string _isinttype = String.Empty;
		private int _pxh;
		
		/// <summary>
		/// 字段配置编号
		/// </summary>
		[DataMember]
		public string Fieldid
		{
			get { return _fieldid; }
			set { _fieldid = value; }
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
		public string Fieldname
		{
			get { return _fieldname; }
			set { _fieldname = value; }
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
		/// 是否主键
		/// </summary>
		[DataMember]
		public string Ispk
		{
			get { return _ispk; }
			set { _ispk = value; }
		}

		/// <summary>
		/// 验证类型编号
		/// </summary>
		[DataMember]
		public string Regextypeid
		{
			get { return _regextypeid; }
			set { _regextypeid = value; }
		}

		/// <summary>
		/// 
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
		/// 字典表编号
		/// </summary>
		[DataMember]
		public string Keytableid
		{
			get { return _keytableid; }
			set { _keytableid = value; }
		}

		/// <summary>
		/// 是否编辑
		/// </summary>
		[DataMember]
		public string Isedit
		{
			get { return _isedit; }
			set { _isedit = value; }
		}

		/// <summary>
		/// 排序顺序
		/// </summary>
		[DataMember]
		public int Sort
		{
			get { return _sort; }
			set { _sort = value; }
		}

		/// <summary>
		/// 是小长度
		/// </summary>
		[DataMember]
		public int Minlength
		{
			get { return _minlength; }
			set { _minlength = value; }
		}

		/// <summary>
		/// 最大长度
		/// </summary>
		[DataMember]
		public int Maxlength
		{
			get { return _maxlength; }
			set { _maxlength = value; }
		}

		/// <summary>
		/// 是否自增长列
		/// </summary>
		[DataMember]
		public string Isinttype
		{
			get { return _isinttype; }
			set { _isinttype = value; }
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
