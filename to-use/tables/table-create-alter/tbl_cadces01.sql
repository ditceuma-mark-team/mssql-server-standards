use sm80estoque
go

create table cadces01 (ces01_codigo int identity )    --default 00go 
go                                            
alter  table cadces01 add ces01_segmen int default 00 --//linka com o ces00_codigo do cadces00
go
alter  table cadces01 add ces01_codcest varchar(20) default  '' --//codigo do CEST
go
alter  table cadces01 add ces01_descricest varchar(1000) default ''
go
alter  table cadces01 add ces01_status bit default 0--//bit recebe somente dois status[0(inativo) ou 1(ativo)]
go
create unique clustered index id_cadces01_000 on cadces01(ces01_codigo)
go

----------------------------------------------------------------------------------------------------------------------
--------alter table cadces01 drop column ces01_descricest --//remove coluna da tabela;
--------go

--------alter table cadces01 drop DF__cadces01__ces01___7A8AEC5D --//remove restricao da coluna da tabela caso haja;
----------------------------------------------------------------------------------------------------------------------

use rr01estoque
go

--// sp_refreshview atualiza a view, sem alterar a forma como ela foi criada, que referencia a tabela, caso ela exista.
sp_refreshview cadces00
