use db_name
go

if not object_id('procedure_default') is null
  drop procedure dbo.procedure_default
go
create procedure dbo.procedure_default (
  @pro00_begin int
)
as
begin

  declare @codret int;

  declare 
   @ret_sucess int=000000
  ,@ret_notexe int=000000

  --select
  --    pro00_codfil = isnull(h.value('@pro00_codfil','int'           ),00)
  --  , pro00_codpro = isnull(h.value('@pro00_codpro','int'           ),00)
  --  , pro00_prmpco = isnull(h.value('@pro00_prmpco','numeric(15,5)' ),00)
  --  , pro00_prmini = isnull(h.value('@pro00_prmini','datetime'      ),00)
  --  , pro00_prmfim = isnull(h.value('@pro00_prmfim','datetime'      ),00)
  --  , pro00_altsim = isnull(h.value('@pro00_altsim','int'           ),00)
  --  , pro00_codusr = isnull(h.value('@pro00_codusr','int'           ),00)
  --from @xml.nodes('/row') as sel(h)

  if 0=1
  begin
    set @codret=@ret_sucess;
  end
  else if 0=1
  begin
    set @codret=@ret_notfil;
  end
  else
  begin
    if @pro00_begin>0
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

      if @pro00_begin>0
      begin
        if @pro00_begin=1 and @codret=@ret_sucess
          commit tran
        else
          rollback tran
      end;
    end;
  end;
  
  return @codret
end;
go
