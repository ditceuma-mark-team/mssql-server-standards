use db_name
go

select script='insert into tbl_name(field_name_00,field_name_01,field_name_02) values ('+cast(field_name_00 as varchar(10))+','''+field_name_01+''','+ cast(field_name_02 as varchar(1))+')' from tbl_name
select script='insert into tbl_name(field_name_00,field_name_01,field_name_02,field_name_03,field_name_04) values ('+cast(field_name_00 as varchar(10))+',' + cast(field_name_01 as varchar(20))+','''+field_name_02+''','''+replace(field_name_03, '''','''''')+''',' + cast(field_name_04 as varchar(1)) +')' from tbl_name
