-- UNIQUEIDENTIFIER Veri Tipi
-- INT VARCHAR vs. gibi bir veri tipidir.
-- Ald��� de�er, rakamlar ve harflerden olu�an �ok b�y�k bir say�d�r.
-- Bundan dolay� bu kolona ayn� de�erin birden fazla kez gelmesi neredeyse imkans�zd�r.
-- O y�zden tekil bir veri olu�turmak i�in kullan�l�r.
-- Genellikle biz bu t�r� yazm�� oldu�un bir sistemde kullan�c� kay�t yapt��� zaman ilgili kullan�c�dan mail onay� istiyorsak UNIQUEIDENTIFIER'la bir linki kullan�c�ya g�ndeririz. O link o kullan�c�ya �zel olur kullan�c� linke t�klad���nda ilgili UNIQUEIDENTIFIER'a �zel kullan�c�y� k�yaslar�z e�er �yle bir kullan�c� varsa o kullan�c�y� aktifle�tiririz.

CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
	KOLON3 UNIQUEIDENTIFIER
)
--NEWID Fonksiyonu
--NEWID Fonksiyonu anl�k olarak random yani rastgele bir �ekilde UNIQUEIDENTIFIER tipinde veri �retmemizi sa�lamakta 

SELECT NEWID()
INSERT ORNEKTABLO2 VALUES('X','Y',NEWID())

SELECT * FROM ORNEKTABLO2