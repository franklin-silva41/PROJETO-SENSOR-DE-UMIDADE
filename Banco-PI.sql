create database controladora_sensores;

use controladora_sensores;

create table tbclientes(

idCliente int not null auto_increment primary key,
NomeCliente varchar(80) not null,
emailCliente varchar(50) not null,
CPFCliente char(15) not null,
RGCliente char(12) not null,
EndCliente varchar(80) not null,
CEPCliente char(9) not null,
EmpresaCliente varchar(50)
);

create table tbRua(

idRua int not null auto_increment primary key,
EndRua varchar(80) not null,
nomeRoteador varchar(20)
);

create table tbsensores(

idSensor int not null auto_increment primary key,
MediaSensor int not null,
AlertaSensor char(3),
localSensor varchar(80),
idCliente int not null,
idRua int not null,
foreign key (idCliente) references tbclientes(idCliente),
foreign key (idRua) references tbRua(idRua)
);

desc tbsensores;

-- drop database controladora_sensores;



























