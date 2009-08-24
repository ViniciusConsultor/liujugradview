

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
	///Title: Userinfo类
	///Description:学生信息 数据表实体模型代码
	///@author LiuJu
	///@version 1.0.0.0
	///@date 2009-8-24
	///@modify 
	///@date 
	/// </summary>
	[Serializable]
	[DataContract]
	public partial class Userinfo
	{	
		private string _xsid = String.Empty;
		private string _njid = String.Empty;
		private string _bjid = String.Empty;
		private string _xh = String.Empty;
		private string _mm = String.Empty;
		private string _xm = String.Empty;
		private string _sfz = String.Empty;
		private string _csrq = String.Empty;
		private string _dh = String.Empty;
		private string _qq = String.Empty;
		private string _yx = String.Empty;
		private string _dz = String.Empty;
		private string _zp = String.Empty;
		private string _xb = String.Empty;
		private string _xl = String.Empty;
		
		/// <summary>
		/// 学生编号
		/// </summary>
		[DataMember]
		public string Xsid
		{
			get { return _xsid; }
			set { _xsid = value; }
		}

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
		/// 班级编号
		/// </summary>
		[DataMember]
		public string Bjid
		{
			get { return _bjid; }
			set { _bjid = value; }
		}

		/// <summary>
		/// 学号
		/// </summary>
		[DataMember]
		public string Xh
		{
			get { return _xh; }
			set { _xh = value; }
		}

		/// <summary>
		/// 密码
		/// </summary>
		[DataMember]
		public string Mm
		{
			get { return _mm; }
			set { _mm = value; }
		}

		/// <summary>
		/// 姓名
		/// </summary>
		[DataMember]
		public string Xm
		{
			get { return _xm; }
			set { _xm = value; }
		}

		/// <summary>
		/// 身份证
		/// </summary>
		[DataMember]
		public string Sfz
		{
			get { return _sfz; }
			set { _sfz = value; }
		}

		/// <summary>
		/// 出生日期
		/// </summary>
		[DataMember]
		public string Csrq
		{
			get { return _csrq; }
			set { _csrq = value; }
		}

		/// <summary>
		/// 电话
		/// </summary>
		[DataMember]
		public string Dh
		{
			get { return _dh; }
			set { _dh = value; }
		}

		/// <summary>
		/// QQ
		/// </summary>
		[DataMember]
		public string Qq
		{
			get { return _qq; }
			set { _qq = value; }
		}

		/// <summary>
		/// 邮箱
		/// </summary>
		[DataMember]
		public string Yx
		{
			get { return _yx; }
			set { _yx = value; }
		}

		/// <summary>
		/// 地址
		/// </summary>
		[DataMember]
		public string Dz
		{
			get { return _dz; }
			set { _dz = value; }
		}

		/// <summary>
		/// 照片
		/// </summary>
		[DataMember]
		public string Zp
		{
			get { return _zp; }
			set { _zp = value; }
		}

		/// <summary>
		/// 性别
		/// </summary>
		[DataMember]
		public string Xb
		{
			get { return _xb; }
			set { _xb = value; }
		}

		/// <summary>
		/// 学历
		/// </summary>
		[DataMember]
		public string Xl
		{
			get { return _xl; }
			set { _xl = value; }
		}

	}
}
