/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      DonJun
 * Project :      ZXX.DM1
 * Author :       LiuJu150
 *
 * Date Created : Monday, August 31, 2009 09:40:16
 * Target DBMS : Microsoft SQL Server 2005
 */

/* 
 * TABLE: sys_FieldConfig 
 */

CREATE TABLE sys_FieldConfig(
    xsid             varchar(40)     NOT NULL,
    tableid          varchar(40)     NOT NULL,
    fieldName        varchar(30)     NULL,
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
exec sys.sp_addextendedproperty 'MS_Description', '��ʾ�ؼ����ñ�', 'schema', 'dbo', 'table', 'sys_FieldConfig'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'
END
exec sys.sp_addextendedproperty 'MS_Description', '��ʾ���(����GUID)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'xsid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'
END
exec sys.sp_addextendedproperty 'MS_Description', '����(sys_TableCOnfig�еı��)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'tableid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldName'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֶ�Ӣ����(�ڱ��е��ֶ�Ӣ��)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֶ�������', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'fieldNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֶ������ʾ����(����ʾ�ؼ�����ʾ����)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowMaxLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'
END
exec sys.sp_addextendedproperty 'MS_Description', '����ʾ�ؼ����ֶ�����˳��', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ShowSort'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�����', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isPK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'
END
exec sys.sp_addextendedproperty 'MS_Description', '����ʾ�ؼ����Ƿ���ʾ', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isShow'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '����ʾ�ؼ����Ƿ����', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�������', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isIntType'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ����', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isFK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '������ӵı���', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'
END
exec sys.sp_addextendedproperty 'MS_Description', '����������', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTablePK'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'
END
exec sys.sp_addextendedproperty 'MS_Description', '�����������ֶ�', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'FKTableField'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', '��֤���ͱ��(��֤�ֵ���е�ֵ)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regexTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'
END
exec sys.sp_addextendedproperty 'MS_Description', '�༭����(�༭�����ֵ���е�ֵ)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'editTypeID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'
END
exec sys.sp_addextendedproperty 'MS_Description', '������Ϣ', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'regrxText'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ����(�����ֵ�����,���)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'keyTableID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ڱ༭�ؼ����Ƿ�༭', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isEdit'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ڱ༭�ؼ�������˳��', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditSort'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '�༭��С����', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMinLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'
END
exec sys.sp_addextendedproperty 'MS_Description', '�༭��󳤶�', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'EditMaxLength'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ��Ҫ�ֶ�(�ڱ༭�ؼ���ʱ��һ��Ҫ����)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'isMust'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '�����(�Զ�)', 'schema', 'dbo', 'table', 'sys_FieldConfig', 'column', 'ipxh'
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
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ�����', 'schema', 'dbo', 'table', 'sys_keys'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ����', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableID'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ����', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ��������', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '�ֵ���ѯ', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'keyTableSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'
END
exec sys.sp_addextendedproperty 'MS_Description', '����', 'schema', 'dbo', 'table', 'sys_keys', 'column', 'sort'
go
/* 
 * TABLE: sys_TableConfig 
 */

CREATE TABLE sys_TableConfig(
    tableid             varchar(40)     NOT NULL,
    tableName           varchar(30)     NULL,
    tableNameCh         varchar(30)     NULL,
    ShowStyle           varchar(100)    NULL,
    EditStyle           varchar(100)    NULL,
    isDel               varchar(10)     NULL,
    isEdit              varchar(10)     NULL,
    isPage              varchar(10)     NULL,
    isAllSelect         varchar(10)     NULL,
    isSort              varchar(10)     NULL,
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
exec sys.sp_addextendedproperty 'MS_Description', '��������Ϣ', 'schema', 'dbo', 'table', 'sys_TableConfig'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'
END
exec sys.sp_addextendedproperty 'MS_Description', '����', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableid'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'
END
exec sys.sp_addextendedproperty 'MS_Description', '��Ӣ����', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'
END
exec sys.sp_addextendedproperty 'MS_Description', '��������', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'tableNameCh'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ShowStyle'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ShowStyle'
END
exec sys.sp_addextendedproperty 'MS_Description', '��ʾ�ؼ���ʽ', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ShowStyle'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'EditStyle'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'EditStyle'
END
exec sys.sp_addextendedproperty 'MS_Description', '�༭�ؼ���ʽ', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'EditStyle'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�ɾ��', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isDel'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�༭', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isEdit'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ��ҳ', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isPage'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�ȫѡ', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isAllSelect'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isSort'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isSort'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ�����', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isSort'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Ƿ��Զ�����', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'isCustomColumn'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'
END
exec sys.sp_addextendedproperty 'MS_Description', '�Զ���������', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'CustomColumnName'
go
if exists (select * from ::fn_listextendedproperty('MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'))
BEGIN
    exec sys.sp_dropextendedproperty 'MS_Description', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'
END
exec sys.sp_addextendedproperty 'MS_Description', '�����', 'schema', 'dbo', 'table', 'sys_TableConfig', 'column', 'ipxh'
go
/* 
 * TABLE: sys_FieldConfig 
 */

ALTER TABLE sys_FieldConfig ADD CONSTRAINT Refsys_keys2 
    FOREIGN KEY (keyTableID)
    REFERENCES sys_keys(keyTableID)
go

ALTER TABLE sys_FieldConfig ADD CONSTRAINT Refsys_TableConfig1 
    FOREIGN KEY (tableid)
    REFERENCES sys_TableConfig(tableid)
go


