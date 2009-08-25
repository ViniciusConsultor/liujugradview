/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      DonJun
 * Project :      Model1.DM1
 * Author :       LiuJu150
 *
 * Date Created : Tuesday, August 25, 2009 17:06:55
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: ClassInfo 
 */

CREATE TABLE ClassInfo(
    bjid    varchar(40)     NOT NULL,
    bjmc    varchar(30)     NULL,
    bjpy    varchar(100)    NULL,
    ipxh    int             IDENTITY(1,1),
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (bjid)
)
go



IF OBJECT_ID('ClassInfo') IS NOT NULL
    PRINT '<<< CREATED TABLE ClassInfo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ClassInfo >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ClassInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '班级信息', 'schema', 'dbo', 'table', 'ClassInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjid'
END
exec sys.sp_addextendedproperty 'MS_Description', '班级编号', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjmc'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjmc'
END
exec sys.sp_addextendedproperty 'MS_Description', '班级名称', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjmc'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjpy'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjpy'
END
exec sys.sp_addextendedproperty 'MS_Description', '班级拼音', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'bjpy'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序号', 'schema', 'dbo', 'table', 'ClassInfo', 'column', 'ipxh'
go
/* 
 * TABLE: GradeInfo 
 */

CREATE TABLE GradeInfo(
    njid    varchar(40)    NOT NULL,
    njmc    varchar(60)    NULL,
    njzz    varchar(30)    NULL,
    ipxh    int            IDENTITY(1,1),
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (njid)
)
go



IF OBJECT_ID('GradeInfo') IS NOT NULL
    PRINT '<<< CREATED TABLE GradeInfo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GradeInfo >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'GradeInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '年级信息', 'schema', 'dbo', 'table', 'GradeInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njid'
END
exec sys.sp_addextendedproperty 'MS_Description', '年级编号', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njmc'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njmc'
END
exec sys.sp_addextendedproperty 'MS_Description', '年级名称', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njmc'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njzz'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njzz'
END
exec sys.sp_addextendedproperty 'MS_Description', '年级组长', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'njzz'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序号', 'schema', 'dbo', 'table', 'GradeInfo', 'column', 'ipxh'
go
/* 
 * TABLE: key_editType 
 */

CREATE TABLE key_editType(
    keyID      varchar(40)     NOT NULL,
    keyName    varchar(100)    NULL,
    keyCode    varchar(100)    NULL,
    keyInfo    varchar(200)    NULL,
    sort       int             NULL,
    CONSTRAINT PK115 PRIMARY KEY NONCLUSTERED (keyID)
)
go



IF OBJECT_ID('key_editType') IS NOT NULL
    PRINT '<<< CREATED TABLE key_editType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE key_editType >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑类型字典表', 'schema', 'dbo', 'table', 'key_editType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyID'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑类型编号', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyName'
END
exec sys.sp_addextendedproperty 'MS_Description', '名称', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyCode'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyCode'
END
exec sys.sp_addextendedproperty 'MS_Description', '简称', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyCode'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyInfo'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '信息', 'schema', 'dbo', 'table', 'key_editType', 'column', 'keyInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_editType', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序', 'schema', 'dbo', 'table', 'key_editType', 'column', 'sort'
go
/* 
 * TABLE: key_grade 
 */

CREATE TABLE key_grade(
    keyID      varchar(40)     NOT NULL,
    keyName    varchar(100)    NULL,
    keyCode    varchar(100)    NULL,
    keyInfo    varchar(200)    NULL,
    sort       int             NULL,
    CONSTRAINT PK115_2_1 PRIMARY KEY NONCLUSTERED (keyID)
)
go



IF OBJECT_ID('key_grade') IS NOT NULL
    PRINT '<<< CREATED TABLE key_grade >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE key_grade >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑类型字典表', 'schema', 'dbo', 'table', 'key_grade'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyID'
END
exec sys.sp_addextendedproperty 'MS_Description', '学历字典表', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyName'
END
exec sys.sp_addextendedproperty 'MS_Description', '名称', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyCode'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyCode'
END
exec sys.sp_addextendedproperty 'MS_Description', '简称', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyCode'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyInfo'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '信息', 'schema', 'dbo', 'table', 'key_grade', 'column', 'keyInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_grade', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序', 'schema', 'dbo', 'table', 'key_grade', 'column', 'sort'
go
/* 
 * TABLE: key_regexType 
 */

CREATE TABLE key_regexType(
    keyID      varchar(40)     NOT NULL,
    keyName    varchar(100)    NULL,
    keyCode    varchar(100)    NULL,
    keyInfo    varchar(200)    NULL,
    sort       int             NULL,
    CONSTRAINT PK115_1 PRIMARY KEY NONCLUSTERED (keyID)
)
go



IF OBJECT_ID('key_regexType') IS NOT NULL
    PRINT '<<< CREATED TABLE key_regexType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE key_regexType >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType'
END
exec sys.sp_addextendedproperty 'MS_Description', '验证类型字典表', 'schema', 'dbo', 'table', 'key_regexType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyID'
END
exec sys.sp_addextendedproperty 'MS_Description', '验证类型编号', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyName'
END
exec sys.sp_addextendedproperty 'MS_Description', '名称', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyCode'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyCode'
END
exec sys.sp_addextendedproperty 'MS_Description', '简称', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyCode'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyInfo'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '信息', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'keyInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序', 'schema', 'dbo', 'table', 'key_regexType', 'column', 'sort'
go
/* 
 * TABLE: key_sex 
 */

CREATE TABLE key_sex(
    keyID      varchar(40)     NOT NULL,
    keyName    varchar(100)    NULL,
    keyCode    varchar(100)    NULL,
    keyInfo    varchar(200)    NULL,
    sort       int             NULL,
    CONSTRAINT PK115_2 PRIMARY KEY NONCLUSTERED (keyID)
)
go



IF OBJECT_ID('key_sex') IS NOT NULL
    PRINT '<<< CREATED TABLE key_sex >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE key_sex >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑类型字典表', 'schema', 'dbo', 'table', 'key_sex'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyID'
END
exec sys.sp_addextendedproperty 'MS_Description', '性别类型编号', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyName'
END
exec sys.sp_addextendedproperty 'MS_Description', '名称', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyCode'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyCode'
END
exec sys.sp_addextendedproperty 'MS_Description', '简称', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyCode'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyInfo'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '信息', 'schema', 'dbo', 'table', 'key_sex', 'column', 'keyInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'key_sex', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序', 'schema', 'dbo', 'table', 'key_sex', 'column', 'sort'
go
/* 
 * TABLE: sys_FieldConfig 
 */

CREATE TABLE sys_FieldConfig(
    xsid             varchar(40)     NOT NULL,
    tableid          varchar(40)     NOT NULL,
    fieleName        varchar(30)     NULL,
    fieldNameCh      varchar(30)     NULL,
    ShowMaxLength    int             NULL,
    ShowSort         int             NULL,
    isPK             varchar(2)      NULL,
    isShow           varchar(2)      NULL,
    isSelect         varchar(2)      NULL,
    isIntType        varchar(2)      NULL,
    isFK             varchar(2)      NULL,
    FKTableName      varchar(30)     NULL,
    FKTablePK        varchar(30)     NULL,
    FKTableField     varchar(30)     NULL,
    regexTypeID      varchar(10)     NOT NULL,
    editTypeID       varchar(10)     NULL,
    regrxText        varchar(100)    NULL,
    keyTableID       varchar(40)     NOT NULL,
    isEdit           varchar(2)      NULL,
    EditSort         int             NULL,
    EditMinLength    int             NULL,
    EditMaxLength    int             NULL,
    isMust           varchar(10)     NULL,
    ipxh             int             IDENTITY(1,1),
    CONSTRAINT PK179 PRIMARY KEY NONCLUSTERED (xsid)
)
go



IF OBJECT_ID('sys_FieldConfig') IS NOT NULL
    PRINT '<<< CREATED TABLE sys_FieldConfig >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE sys_FieldConfig >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig'
END
exec sys.sp_addextendedproperty 'MS_Description', '显示控件配置表', 'schema', 'dbo', 'table', 'sys_FieldConfig'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'
END
exec sys.sp_addextendedproperty 'MS_Description', '显示编号(主键GUID)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'
END
exec sys.sp_addextendedproperty 'MS_Description', '表编号(sys_TableCOnfig中的编号)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieleName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieleName'
END
exec sys.sp_addextendedproperty 'MS_Description', '字段英文名(在表中的字段英文)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieleName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '字段中文名', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '字段最大显示长度(在显示控件中显示长度)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'
END
exec sys.sp_addextendedproperty 'MS_Description', '在显示控件中字段排序顺序', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否主键', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'
END
exec sys.sp_addextendedproperty 'MS_Description', '在显示控件中是否显示', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '在显示控件中是否查找', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否自增列', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否外键', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '外键链接的表名', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'
END
exec sys.sp_addextendedproperty 'MS_Description', '外键表的主键', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'
END
exec sys.sp_addextendedproperty 'MS_Description', '链接外键表的字段', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', '验证类型编号(验证字典表中的值)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑类型(编辑类型字典表中的值)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'
END
exec sys.sp_addextendedproperty 'MS_Description', '描术信息', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典表编号(连接字典管理表,外键)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'
END
exec sys.sp_addextendedproperty 'MS_Description', '在编辑控件中是否编辑', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'
END
exec sys.sp_addextendedproperty 'MS_Description', '在编辑控件中排序顺序', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑最小长度', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '编辑最大长度', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否必要字段(在编辑控件的时候一定要输入)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序号(自动)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'
go
/* 
 * TABLE: sys_keys 
 */

CREATE TABLE sys_keys(
    keyTableID        varchar(40)     NOT NULL,
    keyTableName      varchar(30)     NULL,
    keyTableNameCh    varchar(30)     NULL,
    keyTableSelect    varchar(200)    NULL,
    sort              int             NULL,
    CONSTRAINT PK117 PRIMARY KEY NONCLUSTERED (keyTableID)
)
go



IF OBJECT_ID('sys_keys') IS NOT NULL
    PRINT '<<< CREATED TABLE sys_keys >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE sys_keys >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典管理表', 'schema', 'dbo', 'table', 'sys_keys'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典表编号', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典表名', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典表中文名', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '字典表查询', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'
go
/* 
 * TABLE: sys_TableConfig 
 */

CREATE TABLE sys_TableConfig(
    tableid             varchar(40)     NOT NULL,
    tableName           varchar(30)     NULL,
    tableNameCh         varchar(30)     NULL,
    tableStyle          varchar(100)    NULL,
    isDel               varchar(10)     NULL,
    isEdit              varchar(10)     NULL,
    isPage              varchar(10)     NULL,
    isAllSelect         varchar(10)     NULL,
    isCustomColumn      varchar(10)     NULL,
    CustomColumnName    varchar(30)     NULL,
    ipxh                int             IDENTITY(1,1),
    CONSTRAINT PK112 PRIMARY KEY NONCLUSTERED (tableid)
)
go



IF OBJECT_ID('sys_TableConfig') IS NOT NULL
    PRINT '<<< CREATED TABLE sys_TableConfig >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE sys_TableConfig >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig'
END
exec sys.sp_addextendedproperty 'MS_Description', '表配置信息', 'schema', 'dbo', 'table', 'sys_TableConfig'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'
END
exec sys.sp_addextendedproperty 'MS_Description', '表编号', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '表英文名', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '表中文名', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableStyle'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableStyle'
END
exec sys.sp_addextendedproperty 'MS_Description', '表样式', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableStyle'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否删除', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否编辑', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否分页', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否全选', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'
END
exec sys.sp_addextendedproperty 'MS_Description', '是否自定义列', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'
END
exec sys.sp_addextendedproperty 'MS_Description', '自定义列名字', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '排序号', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'
go
/* 
 * TABLE: UserInfo 
 */

CREATE TABLE UserInfo(
    xsid    varchar(40)     NOT NULL,
    njid    varchar(40)     NOT NULL,
    bjid    varchar(40)     NOT NULL,
    xh      varchar(10)     NULL,
    mm      varchar(16)     NULL,
    xm      varchar(30)     NULL,
    sfz     varchar(20)     NULL,
    csrq    varchar(20)     NULL,
    dh      varchar(30)     NULL,
    qq      varchar(12)     NULL,
    yx      varchar(30)     NULL,
    dz      varchar(100)    NULL,
    zp      varchar(50)     NULL,
    xb      varchar(10)     NULL,
    xl      varchar(10)     NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (xsid)
)
go



IF OBJECT_ID('UserInfo') IS NOT NULL
    PRINT '<<< CREATED TABLE UserInfo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE UserInfo >>>'
go

if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', default, default))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo'
END
exec sys.sp_addextendedproperty 'MS_Description', '学生信息', 'schema', 'dbo', 'table', 'UserInfo'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xsid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xsid'
END
exec sys.sp_addextendedproperty 'MS_Description', '学生编号', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xsid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'njid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'njid'
END
exec sys.sp_addextendedproperty 'MS_Description', '年级编号', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'njid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'bjid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'bjid'
END
exec sys.sp_addextendedproperty 'MS_Description', '班级编号', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'bjid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xh'
END
exec sys.sp_addextendedproperty 'MS_Description', '学号', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'mm'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'mm'
END
exec sys.sp_addextendedproperty 'MS_Description', '密码', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'mm'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xm'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xm'
END
exec sys.sp_addextendedproperty 'MS_Description', '姓名', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xm'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'sfz'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'sfz'
END
exec sys.sp_addextendedproperty 'MS_Description', '身份证', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'sfz'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'csrq'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'csrq'
END
exec sys.sp_addextendedproperty 'MS_Description', '出生日期', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'csrq'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dh'
END
exec sys.sp_addextendedproperty 'MS_Description', '电话', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'qq'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'qq'
END
exec sys.sp_addextendedproperty 'MS_Description', 'QQ', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'qq'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'yx'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'yx'
END
exec sys.sp_addextendedproperty 'MS_Description', '邮箱', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'yx'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dz'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dz'
END
exec sys.sp_addextendedproperty 'MS_Description', '地址', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'dz'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'zp'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'zp'
END
exec sys.sp_addextendedproperty 'MS_Description', '照片', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'zp'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xb'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xb'
END
exec sys.sp_addextendedproperty 'MS_Description', '性别', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xb'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xl'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xl'
END
exec sys.sp_addextendedproperty 'MS_Description', '学历', 'schema', 'dbo', 'table', 'UserInfo', 'column', 'xl'
go
/* 
 * TABLE: sys_FieldConfig 
 */

ALTER TABLE sys_FieldConfig ADD CONSTRAINT Refsys_TableConfig1 
    FOREIGN KEY (tableid)
    REFERENCES sys_TableConfig(tableid)
go

ALTER TABLE sys_FieldConfig ADD CONSTRAINT Refsys_keys8 
    FOREIGN KEY (keyTableID)
    REFERENCES sys_keys(keyTableID)
go


/* 
 * TABLE: UserInfo 
 */

ALTER TABLE UserInfo ADD CONSTRAINT RefClassInfo6 
    FOREIGN KEY (bjid)
    REFERENCES ClassInfo(bjid)
go

ALTER TABLE UserInfo ADD CONSTRAINT RefGradeInfo7 
    FOREIGN KEY (njid)
    REFERENCES GradeInfo(njid)
go


