use resiliadata;

create table empresas_parceiras (
    id_empresa int not null primary key auto_increment,
    nome varchar(100),
    endereco varchar(150)
);

create table areas (
    id int not null primary key auto_increment,
    nome varchar(100)
);

create table tecnologias (
    id_tecnologia int not null primary key auto_increment,
    nome varchar(100)
    );    
   
create table colaboradores (
    id_colaborador int not null primary key auto_increment,
    nome  varchar(100)
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


 
















