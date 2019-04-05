use rr01cadastro
go

create table cadces00 (ces00_codigo int default 00)
go
alter  table cadces00 add ces00_descri varchar(500) default ''
go
alter  table cadces00 add ces00_status bit default 0 --//bit[0(inativo) ou 1(ativo)]
go

create unique clustered index id_cadces00_000 on cadces00(ces00_codigo)
go

use rr01estoque
go

--// sp_refreshview atualiza a view, sem alterar a forma como ela foi criada, que referencia a tabela, caso ela exista.
sp_refreshview cadces00
