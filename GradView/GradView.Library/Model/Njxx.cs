﻿

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
	///Title: Njxx类
	///Description:年级信息 数据表实体模型代码
	///@author 刘巨
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class Njxx
	{	
		private string _njid = String.Empty;
		private string _njmc = String.Empty;
		private string _njzz = String.Empty;
		private int _phx;
		
		/// <summary>
		/// 年级编号
		/// </summary>
		[DataMember]
		public string Njid
		{
			get { return _njid; }
			set { _njid = value; }
		}

		/// <summary>
		/// 年级名称
		/// </summary>
		[DataMember]
		public string Njmc
		{
			get { return _njmc; }
			set { _njmc = value; }
		}

		/// <summary>
		/// 年级组长
		/// </summary>
		[DataMember]
		public string Njzz
		{
			get { return _njzz; }
			set { _njzz = value; }
		}

		/// <summary>
		/// 排序号
		/// </summary>
		[DataMember]
		public int Phx
		{
			get { return _phx; }
			set { _phx = value; }
		}

	}
}
