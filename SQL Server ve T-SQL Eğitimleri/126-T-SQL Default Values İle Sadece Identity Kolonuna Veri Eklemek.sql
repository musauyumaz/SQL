-- DEFAULT VALUES Ýle Sadece Identity Kolonuna Veri Eklemek
-- Eðer ki veritabanýnda görevi sadece diðer tablolar tarafýndan referans alýnacaðý ideleri üretecek ve barýndýracak olan bir tabloya ihtiyacýnýz varsa kullanýlýr.

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