

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
	///Title: KeyRegextype类
	///Description:验证类型字典表 数据表实体模型代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class KeyRegextype
	{	
		private string _keyid = String.Empty;
		private string _keyname = String.Empty;
		private string _keycode = String.Empty;
		private string _keyinfo = String.Empty;
		private string _sort = String.Empty;
		
		/// <summary>
		/// 验证类型编号
		/// </summary>
		[DataMember]
		public string Keyid
		{
			get { return _keyid; }
			set { _keyid = value; }
		}

		/// <summary>
		/// 名称
		/// </summary>
		[DataMember]
		public string Keyname
		{
			get { return _keyname; }
			set { _keyname = value; }
		}

		/// <summary>
		/// 简称
		/// </summary>
		[DataMember]
		public string Keycode
		{
			get { return _keycode; }
			set { _keycode = value; }
		}

		/// <summary>
		/// 信息
		/// </summary>
		[DataMember]
		public string Keyinfo
		{
			get { return _keyinfo; }
			set { _keyinfo = value; }
		}

		/// <summary>
		/// 排序
		/// </summary>
		[DataMember]
		public string Sort
		{
			get { return _sort; }
			set { _sort = value; }
		}

	}
}
