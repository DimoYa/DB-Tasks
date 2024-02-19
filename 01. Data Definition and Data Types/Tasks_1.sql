-- Problem 1.	Create Database

USE master;
CREATE DATABASE Minions;

GO
-- Problem 2.	Create Tables

USE Minions;
CREATE TABLE Minions  (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
);

CREATE TABLE Towns  (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50)
);

-- Problem 3.	Alter Minions Table

ALTER TABLE Minions
    ADD TownId INT;

ALTER TABLE Minions
	ADD CONSTRAINT fk_minions_towns
	FOREIGN KEY (TownId)
	REFERENCES Towns(Id);

-- Problem 4.	Insert Records in Both Tables

INSERT INTO Towns VALUES
	('Sofia'),
	('Plovdiv'),
	('Varna')

INSERT INTO Minions VALUES
	('Kevin',	22,	1),
	('Bob',	15,	3),
	('Steward',	NULL,	2)

-- Problem 5.	Truncate Table Minions

Truncate table Minions

-- Problem 6.	Drop All Tables

Drop table Minions;
Drop table Towns;