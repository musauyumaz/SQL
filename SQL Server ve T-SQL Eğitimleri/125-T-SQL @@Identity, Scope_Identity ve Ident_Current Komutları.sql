-- @@IDENTITY, SCOPE_IDENTITY() ve IDENT_CURRENT() Komutlar�

-- == @@IDENTITY
-- A��lm�� olan ba�lant�da(connection); tablo yahut sorgunun �al��t��� scope'a bakmaks�z�n son �retilen identity de�erini vermektedir.
-- Dikkat ! ! !
-- Trigger kullan�lan sorgularda yanl�� sonu� alma ihtimalinden dolay� kullan�lmas� tavsiye edilmez.

INSERT Personeller(Adi,SoyAdi) VALUES('MU�DD�N','�MPATR�NO') 
SELECT @@IDENTITY

-- == SCOPE_IDENTITY()
-- A��lm�� olan ba�lant�da(connection) ve sorgunun �al��t��� scope'ta son �retilen identity de�erini d�nd�r�r.
-- Dikkat ! ! !
-- Trigger kullan�lan sorgularda @@IDENTITY yerine bu fonksiyonun kullan�lmas� tavsiye edilir.

INSERT Personeller(Adi,SoyAdi) VALUES('MU�DD�N','�MPATR�NO') 
SELECT SCOPE_IDENTITY()

-- == IDENT_CURRENT('TabloAdi')
-- Ba�lant� ve sorgunun �al��t�r�ld��� scope'a bakmaks�z�n parametre olarak verilen tabloda �retilen sonuncu identity de�erini d�nd�r�r.

CREATE DATABASE ORNEKVERITABANI
GO
CREATE TABLE ORNEKTABLO1
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)
GO 
CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)

USE ORNEKVERITABANI

CREATE TRIGGER KONTROL
ON ORNEKTABLO1 FOR INSERT 
AS 
INSERT ORNEKTABLO2 VALUES('','')

INSERT ORNEKTABLO2 VALUES('1','1')
INSERT ORNEKTABLO2 VALUES('2','2')
INSERT ORNEKTABLO2 VALUES('3','3')
INSERT ORNEKTABLO2 VALUES('4','4')
INSERT ORNEKTABLO2 VALUES('5','5')

INSERT ORNEKTABLO1 VALUES('6','6')

SELECT @@IDENTITY
UNION ALL
SELECT SCOPE_IDENTITY()
UNION ALL
SELECT IDENT_CURRENT('ORNEKTABLO1')
