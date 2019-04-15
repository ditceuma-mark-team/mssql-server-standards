use db_name
go

declare @codret      int; --//codigo  retorno;
declare @ret_sucess  int; --//retorno sucesso;
declare @ret_notexe  int; --//retorno nao executado;

set @ret_sucess=1;
set @ret_notexe=0;

begin tran
    begin try
        UPDATE tbl_name SET field_name = 0000 WHERE field_name = 'STATUS' AND field_name = 0000 --// Query SQL a ser executada
        set @codret=@ret_sucess;
    end try
    begin catch
        print error_message();
        set @codret=@ret_notexe;
    end catch;

    if @codret = @ret_sucess
    begin
        commit tran
    end
    else
    begin
        rollback tran
    end
