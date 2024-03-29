﻿

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
	///Title: KeySex类
	///Description:编辑类型字典表 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-29
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class KeySex
	{	
		private string _keyid = String.Empty;
		private string _keyname = String.Empty;
		private string _keycode = String.Empty;
		private string _keyinfo = String.Empty;
		private int _sort;
		
		/// <summary>
		/// 性别类型编号
		/// </summary>
		[DataMember(Name="keyID")]
		public string Keyid
		{
			get { return _keyid; }
			set { _keyid = value; }
		}

		/// <summary>
		/// 名称
		/// </summary>
		[DataMember(Name="keyName")]
		public string Keyname
		{
			get { return _keyname; }
			set { _keyname = value; }
		}

		/// <summary>
		/// 简称
		/// </summary>
		[DataMember(Name="keyCode")]
		public string Keycode
		{
			get { return _keycode; }
			set { _keycode = value; }
		}

		/// <summary>
		/// 信息
		/// </summary>
		[DataMember(Name="keyInfo")]
		public string Keyinfo
		{
			get { return _keyinfo; }
			set { _keyinfo = value; }
		}

		/// <summary>
		/// 排序
		/// </summary>
		[DataMember(Name="sort")]
		public int Sort
		{
			get { return _sort; }
			set { _sort = value; }
		}

	}
}
