drop database HeartLife;
create database HeartLife;
use HeartLife;
create table userh (
	usr varchar(25) not null primary key,
    pass varchar(50) not null,
    id_fb varchar(30),
    nombre varchar (50) not null,
	fec_nac date not null,
    correo varchar(50) not null) 
Engine = innoDB;
select * from userh;

create table general (
	usr varchar(25) not null,
    direccion varchar(100) not null,
    ciudad varchar(50) not null,
    estado varchar(50) not null,
    cp int not null,
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

drop trigger if exists register;
delimiter $$
create trigger register after insert on userh for each row
begin 
    insert into general values (new.usr, "NA", "NA", "NA", 00000);
    insert into emergencyContacts values (new.usr, 1, "NA", "NA", "NA", "0000");
end $$
delimiter $$
delimiter ;
delete from emergencyContacts where usr= "erickpinzon18";