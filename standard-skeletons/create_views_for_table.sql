use db_name
go

--//select your database
--//select * from tbl_name

create view dbo.tbl_name as select*from db_name.dbo.tbl_name(nolock)

--//alter views for yours tables
alter view dbo.tbl_name as select*from db_name.dbo.tbl_name(nolock)
