CREATE TABLE Drukarki (
    id_Drukarki int PRIMARY KEY NOT NULL IDENTITY(1,1),
    model nvarchar(20),
	kolor bit,
	typ nvarchar(20),
	cena int,
); 

CREATE TABLE Produkty (
    id_Produktu int PRIMARY KEY NOT NULL IDENTITY(1,1),
    producent nvarchar(20),
	model nvarchar(20),
	typ nvarchar(20),
); 

CREATE TABLE Laptop (
    id_Laptopa int PRIMARY KEY NOT NULL IDENTITY(1,1),
    model nvarchar(20),
    procesor int,
	ram int,
    hdd int,
	ekran int,
	cena int,
); 

CREATE TABLE PC (
    id_PC int PRIMARY KEY NOT NULL IDENTITY(1,1),
    model nvarchar(20),
    procesor int,
	ram int,
    hdd int,
	cd int,
	ekran int,
	cena int,
); 