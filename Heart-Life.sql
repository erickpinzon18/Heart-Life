drop database HeartLife;
create database HeartLife;
use HeartLife;
create table userh (
	usr varchar(25) not null primary key,
    pass varchar(50) not null,
    id_fb varchar(30),
    nombre varchar (50) not null,
	fec_nac date not null,
    correo varchar(50) not null,
    sangre VARCHAR(5)) 
Engine = innoDB;
select * from userh;

create table general (
	usr varchar(25) not null,
    direccion varchar(100) not null,
    ciudad varchar(50) not null,
    estado varchar(50) not null,
    cp int not null,
    sangre varchar(10) not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;
select * from general;

create table emergencyContacts (
	usr varchar(25) not null,
    nContacto int,
    nombre varchar(100) not null,
    email varchar(100) not null,
    direc varchar(100) not null,
    numero varchar(100) not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;
select * from emergencyContacts;

create table relatives (
	usr varchar(25) not null,
    nRelative int,
    nombre varchar(100) not null,
    parentezco varchar(100) not null,
    direc varchar(100) not null,
    numero varchar(100) not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;
select * from relatives;

create table enfermedad (
	usr varchar(25) not null,
    nEnfer int not null,
    nombre varchar(50) not null,
    gravedad varchar(50) not null,
    fec_det date,
    tratado varchar(5) not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;
select * from enfermedad;

create table alergia (
	usr varchar(25) not null,
    nAlergia int not null,
    nombre varchar(50) not null,
    gravedad varchar(50) not null,
    fec_det date,
    tratado varchar(5) not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;
select * from alergia;

create table notification (
	usr varchar(25) not null,
    nNotif int not null,
    descripcion varchar (100) not null,
    grado int not null,
    foreign key (usr) references userh (usr)) 
Engine = innoDB;

drop trigger if exists register;
delimiter $$
create trigger register after insert on userh for each row
begin 
    insert into general values (new.usr, "NA", "NA", "NA", 0, "NA");
    insert into emergencyContacts values (new.usr, 1, "NA", "NA", "NA", "0000");
    insert into relatives values (new.usr, 1, "NA", "NA", "NA", "0000");
    insert into enfermedad values (new.usr, 1, "NA", "NA", null, "NA");
    insert into alergia values (new.usr, 1, "NA", "NA", null, "NA");
    insert into notification values (new.usr, 1, "Completa tus datos en la sección general", 3);
    insert into notification values (new.usr, 2, "Completa tus Contactos de Emergencia", 1);
    insert into notification values (new.usr, 3, "Completa tus Familiares Cercanos", 2);
    insert into notification values (new.usr, 4, "Completa tus datos en la seccion salud", 4);
    insert into notification values (new.usr, 5, "Informate sobre mas en nuestro Blog", 5);
end $$
delimiter $$
delimiter ;

drop trigger if exists notifG;
delimiter $$
create trigger notifG after update on general for each row
begin 
    delete from notification where usr = new.usr and descripcion = "Completa tus datos en la sección general";
end $$
delimiter $$
delimiter ;

drop trigger if exists notifEG;
delimiter $$
create trigger notifEG after update on emergencyContacts for each row
begin 
    delete from notification where usr = new.usr and descripcion = "Completa tus Contactos de Emergencia";
end $$
delimiter $$
delimiter ;

drop trigger if exists notifR;
delimiter $$
create trigger notifR after update on relatives for each row
begin 
    delete from notification where usr = new.usr and descripcion = "Completa tus Familiares Cercanos";
end $$
delimiter $$
delimiter ;

drop trigger if exists notifHE;
delimiter $$
create trigger notifHE after update on alergia for each row
begin 
    delete from notification where usr = new.usr and descripcion = "Completa tus datos en la seccion salud";
end $$
delimiter $$
delimiter ;
