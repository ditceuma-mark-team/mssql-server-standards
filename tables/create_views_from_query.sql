use rr01estoque
go

exec sp_executesql N'create view cadces00 as select * from rr01cadastro.dbo.cadces00(nolock)'
exec sp_executesql N'create view cadces01 as select * from rr01cadastro.dbo.cadces01(nolock)'
