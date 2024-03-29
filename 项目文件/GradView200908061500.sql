USE [GradView]
GO
/****** 对象:  User [liuju150]    脚本日期: 08/26/2009 15:14:10 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'liuju150')
CREATE USER [liuju150] FOR LOGIN [liuju150] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** 对象:  Table [dbo].[key_grade]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_grade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_grade](
	[keyID] [varchar](40) NOT NULL,
	[keyName] [varchar](100) NULL,
	[keyCode] [varchar](100) NULL,
	[keyInfo] [varchar](200) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK115_2_1] PRIMARY KEY NONCLUSTERED 
(
	[keyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', N'COLUMN',N'keyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade', @level2type=N'COLUMN',@level2name=N'keyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', N'COLUMN',N'keyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade', @level2type=N'COLUMN',@level2name=N'keyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', N'COLUMN',N'keyCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade', @level2type=N'COLUMN',@level2name=N'keyCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', N'COLUMN',N'keyInfo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade', @level2type=N'COLUMN',@level2name=N'keyInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', N'COLUMN',N'sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade', @level2type=N'COLUMN',@level2name=N'sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_grade', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_grade'
GO
/****** 对象:  Table [dbo].[key_regexType]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_regexType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_regexType](
	[keyID] [varchar](40) NOT NULL,
	[keyName] [varchar](100) NULL,
	[keyCode] [varchar](100) NULL,
	[keyInfo] [varchar](200) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK115_1] PRIMARY KEY NONCLUSTERED 
(
	[keyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', N'COLUMN',N'keyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证类型编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType', @level2type=N'COLUMN',@level2name=N'keyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', N'COLUMN',N'keyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType', @level2type=N'COLUMN',@level2name=N'keyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', N'COLUMN',N'keyCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType', @level2type=N'COLUMN',@level2name=N'keyCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', N'COLUMN',N'keyInfo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType', @level2type=N'COLUMN',@level2name=N'keyInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', N'COLUMN',N'sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType', @level2type=N'COLUMN',@level2name=N'sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_regexType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_regexType'
GO
/****** 对象:  Table [dbo].[key_sex]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_sex]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_sex](
	[keyID] [varchar](40) NOT NULL,
	[keyName] [varchar](100) NULL,
	[keyCode] [varchar](100) NULL,
	[keyInfo] [varchar](200) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK115_2] PRIMARY KEY NONCLUSTERED 
(
	[keyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', N'COLUMN',N'keyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别类型编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex', @level2type=N'COLUMN',@level2name=N'keyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', N'COLUMN',N'keyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex', @level2type=N'COLUMN',@level2name=N'keyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', N'COLUMN',N'keyCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex', @level2type=N'COLUMN',@level2name=N'keyCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', N'COLUMN',N'keyInfo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex', @level2type=N'COLUMN',@level2name=N'keyInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', N'COLUMN',N'sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex', @level2type=N'COLUMN',@level2name=N'sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_sex', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_sex'
GO
/****** 对象:  Table [dbo].[sys_keys]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_keys]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sys_keys](
	[keyTableID] [varchar](40) NOT NULL,
	[keyTableName] [varchar](30) NULL,
	[keyTableNameCh] [varchar](30) NULL,
	[keyTableSelect] [varchar](200) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK117] PRIMARY KEY NONCLUSTERED 
(
	[keyTableID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', N'COLUMN',N'keyTableID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys', @level2type=N'COLUMN',@level2name=N'keyTableID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', N'COLUMN',N'keyTableName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys', @level2type=N'COLUMN',@level2name=N'keyTableName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', N'COLUMN',N'keyTableNameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys', @level2type=N'COLUMN',@level2name=N'keyTableNameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', N'COLUMN',N'keyTableSelect'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys', @level2type=N'COLUMN',@level2name=N'keyTableSelect'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', N'COLUMN',N'sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys', @level2type=N'COLUMN',@level2name=N'sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_keys', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_keys'
GO
/****** 对象:  Table [dbo].[sys_TableConfig]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_TableConfig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sys_TableConfig](
	[tableid] [varchar](40) NOT NULL,
	[tableName] [varchar](30) NULL,
	[tableNameCh] [varchar](30) NULL,
	[tableStyle] [varchar](100) NULL,
	[isDel] [varchar](10) NULL,
	[isEdit] [varchar](10) NULL,
	[isPage] [varchar](10) NULL,
	[isAllSelect] [varchar](10) NULL,
	[isCustomColumn] [varchar](10) NULL,
	[CustomColumnName] [varchar](30) NULL,
	[ipxh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK112] PRIMARY KEY NONCLUSTERED 
(
	[tableid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'tableid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'tableid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'tableName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'tableName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'tableNameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'tableNameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'tableStyle'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'tableStyle'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'isDel'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'isDel'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'isEdit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'isEdit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'isPage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否分页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'isPage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'isAllSelect'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否全选' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'isAllSelect'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'isCustomColumn'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自定义列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'isCustomColumn'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'CustomColumnName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义列名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'CustomColumnName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', N'COLUMN',N'ipxh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig', @level2type=N'COLUMN',@level2name=N'ipxh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_TableConfig', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表配置信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_TableConfig'
GO
/****** 对象:  Table [dbo].[ClassInfo]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClassInfo](
	[bjid] [varchar](40) NOT NULL,
	[bjmc] [varchar](30) NULL,
	[bjpy] [varchar](100) NULL,
	[ipxh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK8] PRIMARY KEY NONCLUSTERED 
(
	[bjid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClassInfo', N'COLUMN',N'bjid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassInfo', @level2type=N'COLUMN',@level2name=N'bjid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClassInfo', N'COLUMN',N'bjmc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassInfo', @level2type=N'COLUMN',@level2name=N'bjmc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClassInfo', N'COLUMN',N'bjpy'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassInfo', @level2type=N'COLUMN',@level2name=N'bjpy'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClassInfo', N'COLUMN',N'ipxh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassInfo', @level2type=N'COLUMN',@level2name=N'ipxh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'ClassInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassInfo'
GO
/****** 对象:  Table [dbo].[GradeInfo]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GradeInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GradeInfo](
	[njid] [varchar](40) NOT NULL,
	[njmc] [varchar](60) NULL,
	[njzz] [varchar](30) NULL,
	[ipxh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK9] PRIMARY KEY NONCLUSTERED 
(
	[njid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GradeInfo', N'COLUMN',N'njid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GradeInfo', @level2type=N'COLUMN',@level2name=N'njid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GradeInfo', N'COLUMN',N'njmc'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GradeInfo', @level2type=N'COLUMN',@level2name=N'njmc'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GradeInfo', N'COLUMN',N'njzz'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级组长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GradeInfo', @level2type=N'COLUMN',@level2name=N'njzz'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GradeInfo', N'COLUMN',N'ipxh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GradeInfo', @level2type=N'COLUMN',@level2name=N'ipxh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'GradeInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GradeInfo'
GO
/****** 对象:  Table [dbo].[key_editType]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[key_editType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[key_editType](
	[keyID] [varchar](40) NOT NULL,
	[keyName] [varchar](100) NULL,
	[keyCode] [varchar](100) NULL,
	[keyInfo] [varchar](200) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK115] PRIMARY KEY NONCLUSTERED 
(
	[keyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', N'COLUMN',N'keyID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑类型编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType', @level2type=N'COLUMN',@level2name=N'keyID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', N'COLUMN',N'keyName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType', @level2type=N'COLUMN',@level2name=N'keyName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', N'COLUMN',N'keyCode'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType', @level2type=N'COLUMN',@level2name=N'keyCode'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', N'COLUMN',N'keyInfo'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType', @level2type=N'COLUMN',@level2name=N'keyInfo'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', N'COLUMN',N'sort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType', @level2type=N'COLUMN',@level2name=N'sort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'key_editType', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑类型字典表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'key_editType'
GO
/****** 对象:  Table [dbo].[sys_FieldConfig]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_FieldConfig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sys_FieldConfig](
	[xsid] [varchar](40) NOT NULL,
	[tableid] [varchar](40) NOT NULL,
	[fieleName] [varchar](30) NULL,
	[fieldNameCh] [varchar](30) NULL,
	[ShowMaxLength] [int] NULL,
	[ShowSort] [int] NULL,
	[isPK] [varchar](2) NULL,
	[isShow] [varchar](2) NULL,
	[isSelect] [varchar](2) NULL,
	[isIntType] [varchar](2) NULL,
	[isFK] [varchar](2) NULL,
	[FKTableName] [varchar](30) NULL,
	[FKTablePK] [varchar](30) NULL,
	[FKTableField] [varchar](30) NULL,
	[regexTypeID] [varchar](10) NOT NULL,
	[editTypeID] [varchar](10) NULL,
	[regrxText] [varchar](100) NULL,
	[keyTableID] [varchar](40) NOT NULL,
	[isEdit] [varchar](2) NULL,
	[EditSort] [int] NULL,
	[EditMinLength] [int] NULL,
	[EditMaxLength] [int] NULL,
	[isMust] [varchar](10) NULL,
	[ipxh] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK179] PRIMARY KEY NONCLUSTERED 
(
	[xsid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'xsid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示编号(主键GUID)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'xsid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'tableid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表编号(sys_TableCOnfig中的编号)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'tableid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'fieleName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段英文名(在表中的字段英文)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'fieleName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'fieldNameCh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'fieldNameCh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'ShowMaxLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段最大显示长度(在显示控件中显示长度)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'ShowMaxLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'ShowSort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在显示控件中字段排序顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'ShowSort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isPK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isPK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isShow'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在显示控件中是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isShow'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isSelect'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在显示控件中是否查找' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isSelect'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isIntType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自增列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isIntType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isFK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否外键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isFK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'FKTableName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键链接的表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'FKTableName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'FKTablePK'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外键表的主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'FKTablePK'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'FKTableField'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接外键表的字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'FKTableField'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'regexTypeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证类型编号(验证字典表中的值)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'regexTypeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'editTypeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑类型(编辑类型字典表中的值)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'editTypeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'regrxText'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描术信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'regrxText'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'keyTableID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表编号(连接字典管理表,外键)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'keyTableID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isEdit'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在编辑控件中是否编辑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isEdit'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'EditSort'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在编辑控件中排序顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'EditSort'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'EditMinLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑最小长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'EditMinLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'EditMaxLength'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑最大长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'EditMaxLength'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'isMust'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必要字段(在编辑控件的时候一定要输入)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'isMust'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', N'COLUMN',N'ipxh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序号(自动)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig', @level2type=N'COLUMN',@level2name=N'ipxh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sys_FieldConfig', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示控件配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_FieldConfig'
GO
/****** 对象:  Table [dbo].[UserInfo]    脚本日期: 08/26/2009 15:14:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInfo](
	[xsid] [varchar](40) NOT NULL,
	[njid] [varchar](40) NOT NULL,
	[bjid] [varchar](40) NOT NULL,
	[xh] [varchar](10) NULL,
	[mm] [varchar](16) NULL,
	[xm] [varchar](30) NULL,
	[sfz] [varchar](20) NULL,
	[csrq] [varchar](20) NULL,
	[dh] [varchar](30) NULL,
	[qq] [varchar](12) NULL,
	[yx] [varchar](30) NULL,
	[dz] [varchar](100) NULL,
	[zp] [varchar](50) NULL,
	[xb] [varchar](10) NULL,
	[xl] [varchar](10) NULL,
 CONSTRAINT [PK7] PRIMARY KEY NONCLUSTERED 
(
	[xsid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'xsid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'xsid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'njid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'njid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'bjid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'bjid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'xh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'xh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'mm'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'mm'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'xm'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'xm'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'sfz'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'sfz'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'csrq'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'csrq'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'dh'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'dh'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'qq'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'qq'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'yx'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'yx'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'dz'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'dz'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'zp'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'zp'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'xb'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'xb'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'xl'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'xl'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo'
GO
/****** 对象:  ForeignKey [Refsys_keys8]    脚本日期: 08/26/2009 15:14:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Refsys_keys8]') AND parent_object_id = OBJECT_ID(N'[dbo].[sys_FieldConfig]'))
ALTER TABLE [dbo].[sys_FieldConfig]  WITH CHECK ADD  CONSTRAINT [Refsys_keys8] FOREIGN KEY([keyTableID])
REFERENCES [dbo].[sys_keys] ([keyTableID])
GO
ALTER TABLE [dbo].[sys_FieldConfig] CHECK CONSTRAINT [Refsys_keys8]
GO
/****** 对象:  ForeignKey [Refsys_TableConfig1]    脚本日期: 08/26/2009 15:14:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[Refsys_TableConfig1]') AND parent_object_id = OBJECT_ID(N'[dbo].[sys_FieldConfig]'))
ALTER TABLE [dbo].[sys_FieldConfig]  WITH CHECK ADD  CONSTRAINT [Refsys_TableConfig1] FOREIGN KEY([tableid])
REFERENCES [dbo].[sys_TableConfig] ([tableid])
GO
ALTER TABLE [dbo].[sys_FieldConfig] CHECK CONSTRAINT [Refsys_TableConfig1]
GO
/****** 对象:  ForeignKey [RefClassInfo6]    脚本日期: 08/26/2009 15:14:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[RefClassInfo6]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInfo]'))
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [RefClassInfo6] FOREIGN KEY([bjid])
REFERENCES [dbo].[ClassInfo] ([bjid])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [RefClassInfo6]
GO
/****** 对象:  ForeignKey [RefGradeInfo7]    脚本日期: 08/26/2009 15:14:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[RefGradeInfo7]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserInfo]'))
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD  CONSTRAINT [RefGradeInfo7] FOREIGN KEY([njid])
REFERENCES [dbo].[GradeInfo] ([njid])
GO
ALTER TABLE [dbo].[UserInfo] CHECK CONSTRAINT [RefGradeInfo7]
GO
