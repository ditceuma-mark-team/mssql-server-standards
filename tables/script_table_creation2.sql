use master
go

use database_name
go

--================================================================
-- Tabela.........: table_name
-- Modulo(s)......: nome_modulo(s)
-- Programador....: nome_programador
-- Descritivo.....: descricao_tabela
--================================================================

go

if OBJECT_ID('table_name') is null
     create table dbo.table_name(campo_tabela bigint identity(1,1))--//campo sequencial(   (nao utilizado para nada) , (posso colocar mais de um campo aqui)   )
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela01')
     alter table dbo.table_name add campo_tabela01 bigint not null                       --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela02')
     alter table dbo.table_name add campo_tabela02 int not null                          --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela03')
     alter table dbo.table_name add campo_tabela03 smallint                              --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela04')
     alter table dbo.table_name add campo_tabela04 tinyint                               --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela05')
     alter table dbo.table_name add campo_tabela05 bit                                   --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela06')
     alter table dbo.table_name add campo_tabela06 char                                  --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela07')
     alter table dbo.table_name add campo_tabela07 char(xxx)                             --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela08')
     alter table dbo.table_name add campo_tabela08 varchar(x)                            --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela09')
     alter table dbo.table_name add campo_tabela09 varchar(xx)                           --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela10')
     alter table dbo.table_name add campo_tabela10 varchar(xxx)                          --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela11')
     alter table dbo.table_name add campo_tabela11 nvarchar(xxx)                         --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela12')
     alter table dbo.table_name add campo_tabela12 nvarchar(xxxx)                        --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela13')
     alter table dbo.table_name add campo_tabela13 xml                                   --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela14')
     alter table dbo.table_name add campo_tabela14 text                                  --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela15')
     alter table dbo.table_name add campo_tabela15 time                                  --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela16')
     alter table dbo.table_name add campo_tabela16 date default getdate()                --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela17')
     alter table dbo.table_name add campo_tabela17 datetime default getdate()            --//descricao do campo
go

if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela18')
     alter table dbo.table_name add campo_tabela18 datetime default getdate() --//descricao do campo.: Ex: Data e hora do sistema;
go

--//criacao dos indices
--if exists(select 1 from sys.indexes s where s.name='id_index_000')
--     drop index id_index_000 on table_name
--go
create unique clustered index id_index_000 on table_name(campo_tabela);
go
create                  index id_index_001 on table_name(campo_tabela);
go
create                  index id_index_002 on table_name(campo_tabela);
go
create                  index id_index_003 on table_name(campo_tabela);
go

-----------criacao_de_views--------------------------------------------------------
--use master
--go
--use database_name1
--go
--create view table_name1 as select * from database_name0.dbo.table_name0 (nolock)
-----------------------------------------------------------------------------------

-----------alteracoes_de_views-----------------------------------------------------
--use master
--go
--use database_name1
--go
--sp_refreshview table_name1
--ou
--alter view table_name1 as select * from database_name0.dbo.table_name0 (nolock)
-----------------------------------------------------------------------------------

--//select de teste
--select * from table_name
--select * from table_name
--select * from table_name
-----------------------------------------------------------------------------------


