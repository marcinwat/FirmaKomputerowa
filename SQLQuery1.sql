use master;
drop database FirmaKomputerowa;
create database FirmaKomputerowa;

CREATE TABLE [FirmaKomputerowa].[dbo].[Drukarki] (
    model nvarchar(20) PRIMARY KEY,
	kolor bit,
	typ nvarchar(20),
	cena int,
); 

CREATE TABLE [FirmaKomputerowa].[dbo].[Produkty] (
    producent nvarchar(20),
	model nvarchar(20) PRIMARY KEY,
	typ nvarchar(20),
); 

CREATE TABLE [FirmaKomputerowa].[dbo].[Laptop] (
    model nvarchar(20) PRIMARY KEY,
    procesor int,
	ram int,
    hdd int,
	ekran int,
	cena int,
); 

CREATE TABLE [FirmaKomputerowa].[dbo].[PC] (
    model nvarchar(20) PRIMARY KEY,
    procesor int,
	ram int,
    hdd int,
	cd int,
	ekran int,
	cena int,
); 