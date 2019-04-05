--================================================================
-- Tabela.........: table_name
-- Modulo(s)......: nome_modulo(s)
-- Programador....: nome_programador
-- Descritivo.....: descricao_tabela
--================================================================
use master
go

use database_name
go

if object_id('table_name') is null
     create table dbo.table_name(campo_tabela int)
go
if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela')
     alter table table_name add campo_tabela varchar(50) --descritivo_do_campo
go
if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela')
     alter table table_name add campo_tabela int --descritivo_do_campo
go
if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela')
     alter table table_name add campo_tabela int --descritivo_do_campo
go

--//criacao de indices clusters
if exists(select 1 from sys.indexes s where s.name='id_index_000')
     drop index id_index_000 on table_name
go
create unique clustered index id_index_000 on table_name(campo_tabela);
go
