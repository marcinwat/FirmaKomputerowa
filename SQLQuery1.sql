use master; 
drop database firma_komputerowa; 
create database firma_komputerowa; 
use firma_komputerowa;

create table Produkty(
	producent nvarchar(50) not null,
	model nvarchar(50) primary key not null,
	typ nvarchar(50) not null check(typ in ('pc', 'laptop', 'drukarka'))
	);

create table PC(
	model nvarchar(50) primary key not null,
	procesor int not null,
	ram int not null,
	hdd int,
	cd int,
	ekran int,
	cena money not null
	);

create table Laptopy(
	model nvarchar(50) primary key not null,
	procesor int not null,
	ram int not null,
	hdd int,
	ekran int not null,
	cena money not null
	);

create table Drukarki(
	model nvarchar(50) primary key not null /*constraint FK_ProduktyDrukarka references Produkty(model)*/,
	kolor bit not null,
	typ nvarchar(50) check(typ in ('laserowa', 'atramentowa', 'ig³owa')) not null,
	cena money not null
	);

alter table PC add constraint FK_ProduktyPC foreign key (model) references Produkty(model);
alter table Laptopy add constraint FK_ProduktyLaptop foreign key (model) references Produkty(model);
alter table Drukarki add constraint FK_ProduktyDrukarka foreign key (model) references Produkty(model);

insert into Produkty(producent, model, typ) values('Huawey', 'Matebook 13 (Wright-W19A)', 'laptop');
insert into Produkty values('Lenovo', 'Legion Y530-15ICH (81FV00WCPB)', 'laptop');
insert into Produkty values('Dream Machines', 'RX2080-17PL18', 'laptop');
insert into Produkty values('Lenovo', 'V330-15IKB (81AX00H6US)', 'laptop');
insert into Produkty values('Lenovo', 'IdeaPad 320 (80XR0083/UK)', 'laptop');

insert into Produkty values('DELL', 'Sensilo CX-610 [N001]', 'pc');
insert into Produkty values('DELL', 'Infinity S510 [E001]', 'pc');
insert into Produkty values('HP', 'Infinity S515 [F001]', 'pc');
insert into Produkty values('Komputronik', 'Pro 310 [C010]', 'pc');
insert into Produkty values('Komputronik', 'Pro 500 SFF [I003]', 'pc');

insert into Produkty values('Canon', 'PIXMA MG2555S', 'drukarka');
insert into Produkty values('Brother', 'HL-1223WE', 'drukarka');
insert into Produkty values('OKI', 'B412dn', 'drukarka');
insert into Produkty values('EPSON', 'EcoTank ITS L3050', 'drukarka');
insert into Produkty values('EPSON', 'EcoTank L3070', 'drukarka');


insert into Laptopy(model, procesor, ram, hdd, ekran, cena) values('Matebook 13 (Wright-W19A)', 3000, 8192, null, 13, 3899);
insert into Laptopy values('Legion Y530-15ICH (81FV00WCPB)', 3500, 8192, 1024, 15, 3999);
insert into Laptopy values('RX2080-17PL18', 4000, 16384, 1024, 17, 12099);
insert into Laptopy values('V330-15IKB (81AX00H6US)', 2500, 8192, 500, 15, 2399);
insert into Laptopy values('IdeaPad 320 (80XR0083/UK)', 1700, 4096, 1024, 15, 1279);


insert into PC(model, procesor, ram, hdd, cd, ekran, cena) values('Sensilo CX-610 [N001]', 2800, 8192, 240, 4, 17, 2449);
insert into PC values('Infinity S510 [E001]', 2800, 8192, 240, 8, 15, 1799);
insert into PC values('Infinity S515 [F001]', 3000, 8192, 240, 8, 15, 3799);
insert into PC values('Pro 310 [C010]', 3600, 8192, 240, 16, 17, 1149);
insert into PC values('Pro 500 SFF [I003]', 3000, 8192, 240, 4, 17, 2699);


insert into Drukarki(model, kolor, typ, cena) values('PIXMA MG2555S', 1, 'atramentowa', 129.90);
insert into Drukarki values('HL-1223WE', 0, 'laserowa', 419);
insert into Drukarki values('B412dn', 0, 'laserowa', 529);
insert into Drukarki values('EcoTank ITS L3050', 1, 'atramentowa', 699);
insert into Drukarki values('EcoTank L3070', 1, 'atramentowa', 829);


-- zadanie 1 

SELECT 'Z1'[Zadanie], model, procesor, hdd 
FROM PC
WHERE cena < 2000 ;

-- zadanie 2

SELECT 'Z2' [zadanie], producent
FROM Produkty
WHERE typ = 'Drukarka';

-- zadanie 3

SELECT 'Z3'[Zadanie],model, ram, ekran 
FROM PC
WHERE cena > 2000 ;

-- zadanie 4
SELECT 'Z4'[Zadanie],model, kolor, typ, cena 
FROM Drukarki
WHERE kolor = 1;

-- zadanie 5

SELECT 'Z5'[Zadanie],model, procesor, hdd
FROM PC
WHERE (cd = 8 and cena < 2500) or (cd = 16 and cena > 2500);

-- zadanie 6

SELECT 'Z6'[Zadanie],Prod.producent, Lap.procesor
FROM Produkty AS Prod
JOIN Laptopy AS Lap
ON Prod.model = Lap.model
WHERE Lap.hdd >= 500;


-- zadanie 7

SELECT 'Z7'[Zadanie],Prod.producent, PC.procesor
FROM Produkty AS Prod
JOIN PC
ON Prod.model = PC.model
WHERE PC.procesor >= 3500;

-- zadanie 8

SELECT 'Z8'[Zadanie],model, cena
FROM Drukarki
WHERE cena = (SELECT MAX(cena) FROM Drukarki);

-- zadanie 9 

SELECT 'Z9'[Zadanie],AVG(procesor) AS [Œrednia prêdkoœæ procesora]
FROM PC;

-- zadanie 10

SELECT 'Z10'[Zadanie],AVG(procesor) AS [Œrednia prêdkoœæ procesora o cenie powyzej 3500]
FROM PC WHERE cena > 3500 ;
 
 -- zadanie 11 

SELECT 'Z11'[Zadanie],AVG(PC.procesor) AS [Œrednia prêdkoœæ procesora DELL]
FROM Produkty AS Prod
join PC
ON Prod.model = PC.model
WHERE Prod.producent like('DELL');

-- zadanie 12

SELECT 'Z12'[Zadanie],procesor,AVG(cena) AS 'srednia cena'
FROM PC
GROUP BY procesor

-- ZADANIE 13

SELECT 'Z13' [Zadanie], cast(Prod.producent as varchar(50)) as 'Producent', AVG(Lap.ekran) AS [sredni ekran]
FROM Produkty AS Prod
JOIN Laptopy AS Lap
ON Prod.model = Lap.model
GROUP BY CAST(Prod.producent AS VARCHAR(50))
ORDER BY [sredni ekran] DESC

