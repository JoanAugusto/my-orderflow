CREATE DATABASE IF NOT EXISTS gestionComandas;

create table restaurante(
    id_restaurant int auto_increment ,
    name_restaurant varchar(50),
    codepost int,
    address_restaurant varchar(100),
    primary key (id_restaurant)

);

create table adminstrator(
    id_admin int auto_increment,
    id_restaurant int,

    name_admin varchar(100),
    lastname_admin varchar(100),
    email_admin varchar(120),
    dni_admin varchar(9),
    is_admin boolean,
    password_admin varchar(20),

    primary key(id_admin)

    constraint fk_restaurantID foreign key (id_restaurant) references restaurante(id_restaurant)

);

create table sites_restaurant(
    id_sites_restaurant int auto_increment,
    id_restaurant int,
    name_sites_restaurant varchar(50),
    primary key(id_sites_restaurant),

    constraint fk_restaurantID2 foreign key (id_restaurant) references restaurante(id_restaurant)

    
);

create table table_sites(
    id_table int auto_increment,
    name_table varchar(60),
    estado_mesa boolean,
    numero_mesa int,
    primary key(id_table),

);

