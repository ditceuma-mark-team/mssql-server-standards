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
  
  select
  @ret_sucess=000000,
  @ret_notexe=000000;

  --select    
  --    codfil=isnull(h.value('@codfil','int'           ),00)   
  --  , codvar=isnull(h.value('@codvar','int'           ),00)
  --  , codkit=isnull(h.value('@codkit','int'           ),00)
  --  , prokit=isnull(h.value('@prokit','int'           ),00)
  --  , qtdkit=isnull(h.value('@qtdkit','numeric(15,5)' ),00)
  --from @kit00_xml.nodes('/row') as vai(h)         

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
