use sm80estoque
go

select script='insert into cadces00(ces00_codigo,ces00_descri,ces00_status) values ('+cast(ces00_codigo as varchar(10))+','''+ces00_descri+''','+ cast(ces00_status as varchar(1))+')' from cadces00
select script='insert into cadces01(ces01_codces,ces01_segmen,ces01_codcest,ces01_descricest,ces01_status) values ('+cast(ces01_codces as varchar(10))+',' + cast(ces01_segmen as varchar(20))+','''+ces01_codcest+''','''+replace(ces01_descricest, '''','''''')+''',' + cast(ces01_status as varchar(1)) +')' from cadces01
