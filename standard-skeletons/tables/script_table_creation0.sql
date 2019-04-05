use master
go

use database_name
go

if (exists (select * from information_schema.tables 
            where table_schema = 'dbo' 
            and   table_name   = 'table_name') )
begin
     --drop table table_name ou alter table table_name???
end

--------------------------------------|
--Modulo      : nome_modulo           |
--programador : nome_programdor       |
--descritivo  : descricao_da_tabela   |
--------------------------------------|

go
if OBJECT_ID('table_name') is null
    create table dbo.table_name(campo_tabela/*(geralmente campo sequencial)*/ bigint identity) --campo sequencial(nao utilizado para nada)
go
if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela01')
    alter table dbo.table_name add campo_tabela01 int
go
if not exists(select 1 from sys.columns s where s.object_id=OBJECT_ID('table_name')and s.name='campo_tabela02')
    alter table dbo.table_name add campo_tabela02 varchar(20)
go
if exists(select 1 from sys.indexes s where s.name='id_index_001')
    drop index id_index_001 on table_name
go
if exists(select 1 from sys.indexes s where s.name='id_index_002')
    drop index id_index_002 on table_name
go
if exists(select 1 from sys.indexes s where s.name='id_index_003')
    drop index id_index_003 on table_name
go

--//criacao dos clusters
--//ao ser criado um indice clusterizado em uma tabela, seja ele unique ou nao, não é possivel mais criar outro clusterizado
create unique clustered index id_index_001 on table_name(campo_tabela01,campo_tabela02,campo_tabela_nn,...)--//n's campos...
go

create        clustered index id_index_002 on table_name(campo_tabela)
go

--//esses dois ultimos sao iguais
/*
Um campo criado com o parametro 'nonclustered index' tem a mesma funcionalidade(é a mesma coisa), que o campo criado com o paramentro 'index'
*/

create     nonclustered index id_index_003 on table_name(campo_tabela)
go

create                  index id_index_004 on table_name(campo_tabela)
go