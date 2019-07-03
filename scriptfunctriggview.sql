select * from fornecedores

create table clientes_backup(
	cli_id int4 not null,
	cli_endereco varchar(50),
	cli_cpf varchar(11) not null,
	cli_nome varchar(50) not null,
	primary key (cli_id)
);

create or replace function salvar()
returns trigger as
$BODY$
begin
insert into clientes_backup
values(old.cli_id,old.cli_endereco,old.cli_cpf,old.cli_nome);
return null;
end;
$BODY$
language 'plpgsql'

drop trigger exclu_cli on clientes

delete from clientes_backup where cli_id = 3

select * from clientes_backup

create trigger exclu_cli
after delete
on clientes
for each row
execute procedure salvar();

select * from clientes_backup

CREATE VIEW iteCaro as
select * from itens
where ite_valor > 400
order by ite_id

CREATE function fn_t()
returns int
as $$
begin
return (select sum(ite_valor) from itens);
end; $$
language PLPGSQL;
