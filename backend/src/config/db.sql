drop database saep_pediatria;

create database saep_pediatria;
use saep_pediatria;

create table responsaveis (
	id int auto_increment primary key,
    nome varchar(150) not null,
    cpf varchar(14) not null unique,
    telefone varchar(15) not null unique
);

create table filhos (
	id int auto_increment primary key,
    nome varchar(150) not null,
    data_nascimento date not null
);

create table agendamentos (
	id int auto_increment primary key,
    data_consulta date not null,
    motivo varchar(300)
);

create table usuarios (
	id int auto_increment primary key,
    nome varchar(150) not null,
    email varchar(300) not null unique,
    senha varchar (150) not null
);

create table responsaveis_filhos (
	id_responsavel int,
    id_filho int,
    foreign key (id_responsavel) references responsaveis(id),
    foreign key (id_filho) references filhos(id)
);

create table agendamentos_filhos (
	id_filho int,
    id_agendamento int,
    foreign key (id_filho) references filhos(id),
    foreign key (id_agendamento) references agendamentos(id)
);

insert into responsaveis 
(nome, cpf, telefone)
values ("pai", "111.222.333-44", "(00) 11111-2222"),
("mae", "555.666.777-88", "(11) 33333-4444");

insert into filhos 
(nome, data_nascimento)
values ("filho", "2000-01-01"),
("filha", "2000-02-02");

insert into agendamentos 
(data_consulta, motivo)
values ("2010-01-01", "ele ficou gripado"),
("2010-02-02", "ela ficou com febre alta");

insert into usuarios 
(nome, email, senha)
values ("cliente 1", "cliente@bom", "12345"),
("cliente 2", "cliente@top", "54321");

insert into responsaveis_filhos 
(id_responsavel, id_filho)
values ("1", "1"),
("2", "2");

insert into agendamentos_filhos 
(id_filho, id_agendamento)
values ("1", "1"),
("2", "2");