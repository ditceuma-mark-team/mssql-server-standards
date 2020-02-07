use db_name
go

if not object_id('procedure_default') is null
  drop procedure dbo.procedure_default
go
create procedure dbo.procedure_default (
    
  --//parametros
  @begin  int

  --,@param0 int
  --,@param1 varchar(xvalue)
  --,@param2 bigint
  --,@param3 bit
)
as
begin
  
  declare @codret     int; --//codigo  retorno;
  declare @ret_sucess int; --//retorno sucesso;
  declare @ret_notexe int; --//retorno nao executado;

  --//Ou declare com valores iniciais setados
  --//declare @ret_sucess int=000000;
  --//declare @ret_notexe int=000000;
  
  select
  @ret_sucess=000000,
  @ret_notexe=000000;

  --select
  --    field_name=isnull(h.value('@field_name','int'           ),00)
  --  , field_name=isnull(h.value('@field_name','int'           ),00)
  --  , field_name=isnull(h.value('@field_name','int'           ),00)
  --  , field_name=isnull(h.value('@field_name','int'           ),00)
  --  , field_name=isnull(h.value('@field_name','numeric(15,5)' ),00)
  --from tbl_name tbl_alias

  if 0=1
  begin
     set @codret=@ret_sucess;
  end
  else
  begin
     if @begin>0
     begin
       begin tran
     end;

     begin try
        set @codret=@ret_sucess;
     end try
     begin catch
       print error_message();
       set @codret=@ret_notexe;
     end catch;

     if @begin>0
     begin
       if @begin=1 and @codret=@ret_sucess
         commit tran
       else
         rollback tran
     end;
  end;
  
  return @codret
end;
go

use db_name
go
exec procedure_default 0;
go
