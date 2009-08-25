

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
	///Title: Classinfo类
	///Description:班级信息 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-25
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class Classinfo
	{	
		private string _bjid = String.Empty;
		private string _bjmc = String.Empty;
		private string _bjpy = String.Empty;
		private int _ipxh;
		
		/// <summary>
		/// 班级编号
		/// </summary>
		[DataMember]
		public string Bjid
		{
			get { return _bjid; }
			set { _bjid = value; }
		}

		/// <summary>
		/// 班级名称
		/// </summary>
		[DataMember]
		public string Bjmc
		{
			get { return _bjmc; }
			set { _bjmc = value; }
		}

		/// <summary>
		/// 班级拼音
		/// </summary>
		[DataMember]
		public string Bjpy
		{
			get { return _bjpy; }
			set { _bjpy = value; }
		}

		/// <summary>
		/// 排序号
		/// </summary>
		[DataMember]
		public int Ipxh
		{
			get { return _ipxh; }
			set { _ipxh = value; }
		}

	}
}
