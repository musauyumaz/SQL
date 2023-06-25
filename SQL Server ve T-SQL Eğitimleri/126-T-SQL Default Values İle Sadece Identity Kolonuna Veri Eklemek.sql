-- DEFAULT VALUES �le Sadece Identity Kolonuna Veri Eklemek
-- E�er ki veritaban�nda g�revi sadece di�er tablolar taraf�ndan referans al�naca�� ideleri �retecek ve bar�nd�racak olan bir tabloya ihtiyac�n�z varsa kullan�l�r.

CREATE DATABASE ORNEKVERITABANI

CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)

USE ORNEKVERITABANI

INSERT ORNEKTABLO
DEFAULT VALUES