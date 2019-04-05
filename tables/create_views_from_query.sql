use db_name
go

exec sp_executesql N'create view tbl_name as select * from db_name.dbo.tbl_name(nolock)'
exec sp_executesql N'create view tbl_name as select * from db_name.dbo.tbl_name(nolock)'
