--CREATING DATABASE najpierw trzeba stworzyæ bazê "SKLEP" rêcznie lub kodem
USE master
DROP DATABASE SKLEP;
GO
CREATE DATABASE SKLEP;
GO
USE SKLEP; --Wybiera baze SKLEP (nie jest konieczne ale zapewnia utworzenie danych w tej bazie)

--CREATING TABLES
CREATE TABLE Produkty (producent char(25) not null, model char(30) PRIMARY KEY not null, typ char(30) not null)
CREATE TABLE PC (model char(30) FOREIGN KEY REFERENCES Produkty(model) not null, procesor int not null, ram int not null, hdd int not null, cd int not null, ekran int not null, cena money not null)
CREATE TABLE Laptop (model char(30) FOREIGN KEY REFERENCES Produkty(model) not null, procesor int not null, ram int not null, hdd int not null, ekran int not null, cena money not null)
CREATE TABLE Drukarki (model char(30) FOREIGN KEY REFERENCES Produkty(model) not null, kolor char(30) not null, typ char(30) not null, cena money not null)

--INSERT PRODUKTY
INSERT Produkty (producent, model, typ) VALUES ('Dell', 101, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('HP', 102, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Yamo', 103, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Lenovo', 104, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Lenovo', 105, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Dell', 106, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('HP', 107, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('GigaByte', 108, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Asus', 109, 'Work station')
INSERT Produkty (producent, model, typ) VALUES ('Dell', 110, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Asus', 201, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Asus', 202, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Lenovo', 203, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Clevo', 204, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('HP', 205, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('HP', 206, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('HP', 207, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Samsung', 208, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Samsung', 209, 'Gamming')
INSERT Produkty (producent, model, typ) VALUES ('Acer', 210, 'Desktop')
INSERT Produkty (producent, model, typ) VALUES ('Samsung', 301, 'Laser')
INSERT Produkty (producent, model, typ) VALUES ('Samsung', 302, 'Atramentowa')
INSERT Produkty (producent, model, typ) VALUES ('HP', 303, 'Atramentowa')
INSERT Produkty (producent, model, typ) VALUES ('HP', 304, 'Ig³owa')
INSERT Produkty (producent, model, typ) VALUES ('Epson', 305, 'Laser')
INSERT Produkty (producent, model, typ) VALUES ('Epson', 306, 'Laser')
INSERT Produkty (producent, model, typ) VALUES ('Canon', 307, 'Atramentowa')
INSERT Produkty (producent, model, typ) VALUES ('Canon', 308, 'Atramentowa')
INSERT Produkty (producent, model, typ) VALUES ('Canon', 309, 'Laser')
INSERT Produkty (producent, model, typ) VALUES ('Brother', 310, 'Laser')

--INSERT PC
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (101, 4200, 8, 1000, 24, 24, 3200)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (102, 3000, 8, 500, 24, 22, 2990)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (103, 4000, 12, 1000, 24, 27, 3500)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (104, 3700, 4, 500, 24, 19, 2600)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (105, 4500, 16, 1500, 24, 27, 4500)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (106, 2800, 8, 500, 24, 21, 3250)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (107, 3600, 16, 1500, 24, 24, 3950)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (108, 3200, 6, 500, 24, 24, 2750)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (109, 4500, 32, 2000, 24, 27, 5100)
INSERT PC (Model, Procesor, Ram, Hdd, Cd, Ekran, Cena) VALUES (110, 3300, 8, 750, 24, 21, 3450)

--INSERT LAPTOP
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (201, 3300, 8, 1000, 15, 3400)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (202, 4500, 12, 1000, 16, 3600)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (203, 3300, 16, 1000, 16, 4200)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (204, 3800, 32, 1000, 15, 5200)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (205, 3200, 8, 1000, 17, 3100)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (206, 4200, 12, 1000, 17, 3400)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (207, 3600, 8, 1000, 15, 3800)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (208, 1800, 4, 1000, 14, 2400)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (209, 3300, 18, 1000, 16, 3560)
INSERT Laptop (model, procesor, ram, hdd, ekran, cena) VALUES (210, 3800, 8, 1000, 15, 3280)

--INSERT DRUKARKI
INSERT Drukarki (model, kolor, typ, cena) VALUES (301, 'takk', 'Laser', 1200)
INSERT Drukarki (model, kolor, typ, cena) VALUES (302, 'nie', 'Laser', 900)
INSERT Drukarki (model, kolor, typ, cena) VALUES (303, 'tak', 'Atramentowa', 1400)
INSERT Drukarki (model, kolor, typ, cena) VALUES (304, 'niee', 'Ig³owa', 860)
INSERT Drukarki (model, kolor, typ, cena) VALUES (305, 'tak', 'Laser', 1200)
INSERT Drukarki (model, kolor, typ, cena) VALUES (306, 'nie', 'Laser', 600)
INSERT Drukarki (model, kolor, typ, cena) VALUES (307, 'tak', 'Atramentowa', 600)
INSERT Drukarki (model, kolor, typ, cena) VALUES (308, 'tak', 'Atramentowa', 1300)
INSERT Drukarki (model, kolor, typ, cena) VALUES (309, 'nie', 'Laser', 900)
INSERT Drukarki (model, kolor, typ, cena) VALUES (310, 'nie', 'Laser', 1200)

ALTER TABLE Drukarki ADD kolor_boolean bit
GO
ALTER TABLE Drukarki DROP COLUMN kolor
UPDATE Drukarki SET kolor_boolean = 0
UPDATE Drukarki SET kolor_boolean = 1 WHERE model = 301
UPDATE Drukarki SET kolor_boolean = 1 WHERE model = 303
UPDATE Drukarki SET kolor_boolean = 1 WHERE model = 307
UPDATE Drukarki SET kolor_boolean = 1 WHERE model = 308
UPDATE Drukarki SET kolor_boolean = 1 WHERE model = 310

UPDATE PC SET cd = 8 WHERE model = 101       
UPDATE PC SET cd = 12 WHERE model = 102
UPDATE PC SET cd = 12 WHERE model = 103  
UPDATE PC SET cd = 16 WHERE model = 104   
UPDATE PC SET cd = 16 WHERE model = 107
UPDATE PC SET cd = 12 WHERE model = 108
UPDATE PC SET cd = 16 WHERE model = 109              