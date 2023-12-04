create database resiliadata;

create table empresas_parceiras (
    id_empresa int  primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(150) not null
);

create table areas (
    id_area int  primary key auto_increment,
    nome varchar(100) not null
);

create table tecnologias (
    id_tecnologia int  primary key auto_increment,
    nome varchar(100) not null
    );    
   
create table colaboradores (
    id_colaborador int not null primary key auto_increment,
    nome  varchar(100) not null,
    cargo varchar(70) not null
    );    
   
create table tecnologias_empresas (
    id_empresa int,
    id_tecnologia int
    );  
  
alter table tecnologias
add column id_area int;

alter table tecnologias
add constraint fk_tecnologias_id_area
foreign key (id_area) references areas(id_area);

alter table colaboradores
add column id_empresa int;

alter table colaboradores
add constraint fk_tecnologias_id_colaborador
foreign key (id_empresa) references empresas_parceiras(id_empresa);

alter table tecnologias_empresas
add primary key (id_empresa, id_tecnologia);

alter table tecnologias_empresas
add constraint fk_tecnologias_empresas_id_empresa
foreign key (id_empresa) references empresas_parceiras(id_empresa);

alter table tecnologias_empresas
add constraint fk_tecnologias_empresas_id_tecnologia
foreign key (id_tecnologia) references tecnologias(id_tecnologia);

INSERT INTO empresas_parceiras(id_empresa, nome, endereco) VALUES (1 ,'Tecnoforma','Rua do rio,1200');
INSERT INTO empresas_parceiras(id_empresa, nome, endereco) VALUES (2 ,'Tecdata','Rua Margarida,100');

INSERT INTO areas(id_area, nome) VALUES (1 ,'webdev');
INSERT INTO areas(id_area, nome) VALUES (2 ,'dados');

INSERT INTO tecnologias(id_tecnologia, nome, id_area) VALUES (1 ,' JavaScript', 1);
INSERT INTO tecnologias(id_tecnologia, nome, id_area) VALUES (2 ,'MySQL', 2);

INSERT INTO colaboradores(id_colaborador, nome, cargo, id_empresa) VALUES (1 ,'Andre Moraes', 'analista de dados', 1);
INSERT INTO colaboradores(id_colaborador, nome, cargo, id_empresa) VALUES (2 ,'Angela Silva', 'gerente administrativo', 2);

INSERT INTO tecnologias_empresas(id_empresa, id_tecnologia) VALUES (1 , 1);
INSERT INTO tecnologias_empresas(id_empresa, id_tecnologia) VALUES (2 , 2);
















