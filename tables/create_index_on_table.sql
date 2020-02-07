use db_name
go

--// Sintaxe para criação de índices, fora do script de criacao de tabelas.
--// padrao de nomenclatura de índices segue a estrutura a seguir:

--// id
--// nome do esquema
--// nome da tabela
--// numeracao do indice(opcional)

create index id_schema_name_tbl_name_000 on tbl_name(campo_id)
go

--// Quando o índice for de um campo que não é um ID o prefixo deverá ser "ix".
create index ix_schema_name_tbl_name_000 on tbl_name(campo01, campo02)
go
