use db_name
go

--//sintaxe para criacao de indice, fora do script de criacao de tabelas.
--//padrao de nomenclatura de indices segue a estrutura a seguir:
--//id
--//nome do esquema
--//nome da tabela
--//numeracao do indice(opcional)

create index id_schema_name_tbl_name_000 on tbl_name(campo01, campo02)
go
