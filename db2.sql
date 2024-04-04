create database etec;
use etec; 

Create table Departamento(
odDepto int auto_increment,
NomeDepto varchar(50),
primary key (CodDepto)
);

create table Funcionario(
CodFunc int auto_increment,
NomeFunc varchar(50),
CodDepto int,
primary key (CodFunc), -- definição de PK
constraint fk_FuncDdepto foreign key 
(codDepto) references Departamento(codDepto) 
-- definição de FK e relacionamento 
);
 

select * from departamento;
insert into departamento values (1,"T.I.");
insert into departamento values (2,"Compras");
insert into departamento values (3,"Vendas");
insert into departamento values (4,"RH");
insert into departamento values (5,"Financeiro");


select * from Funcionario;
insert into Funcionario values (1,"Otavio",1);
insert into Funcionario values (2,"Rodrigo",2);
insert into funcionario values (3,"Gaby",3);
insert into funcionario values (4,"Tarcisio",5);
insert into funcionario values (5,"Xuxu",5);
insert into funcionario values (6,"Romario",1),
(7,"Lionel Wesley ",5),
(8,"Cristiano Romero",4),
(9,"Raniele",3),
(10,"Ronaldo",2);

select * from funcionario;

-- select f.CodFunc,f.NomeFunc from Funcionario f
-- LEFT JOIN Departamento d on (f.codDepto = d.CodDepto)
