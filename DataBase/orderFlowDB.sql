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
     id_sites_restaurant int,
    name_table varchar(60),
    estado_mesa boolean,
    numero_mesa int,
    primary key(id_table),

    constraint fk_sitesRestaurant foreign key (id_sites_restaurant) references sites_restaurant(id_sites_restaurant)

);

create table category_menu(
    id_category_menu int auto_increment,
    id_restaurant int ,
    name_category_menu varchar(80),
    primary key(id_category_menu),

    constraint fk_restaurantID3 foreign key (id_restaurant) references restaurante(id_restaurant)

);

create table products(
    id_product int auto_increment,
    id_category_menu int,
    name_product varchar(100),
    stock_product int,
    stock_status boolean,
    type_product varchar(10);
    price_product int,

    primary key(id_product),

    constraint fk_categoryMenuID foreign key (id_category_menu) references category_menu(id_category_menu)



);

