use db_name
go

--//create views for yours tables
create view dbo.tbl_name as select*from db_name.dbo.tbl_name(nolock)
go

--//alter views for yours tables
alter view dbo.tbl_name as select*from db_name.dbo.tbl_name(nolock)
go
