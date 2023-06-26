-- == Var Olan Tabloyu Temporal Tables Olarak Ayarlama ==
DROP TABLE DERSKAYITLARI

CREATE TABLE DERSKAYITLARI
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERS NVARCHAR(MAX),
	ONAY BIT
)

INSERT DERSKAYITLARI VALUES('MATEMATÝK',1),
						   ('FÝZÝK',1),
						   ('KÝMYA',1),
						   ('TÜRKÇE',0),
						   ('COÐRAFYA',0),
						   ('VATANDAÞLIK',0)

-- Eðer bu tabloyu temporal yapmak istiyorsak dikkat ! ! !
-- Tablo içerisinde veri var mý? Yok mu? Eðer varsa yeni eklenecek olan StartDate ve EndDate kolonlarý boþ kalamayacaklarý için varsayýlan deðerlerin belirtilmesi gerekmektedir. Yok eðer veri yoksa bu iþlemi düþünmemize gerek olmayacaktýr.

-- Eðer Veri Yoksa...
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)

-- Eðer Veri Varsa...
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL
DEFAULT CAST('1900-01-01 00:00:00.0000000' AS DATETIME2),
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL
DEFAULT CAST('9999-12-31 23:59:59.9999999' AS DATETIME2),
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)

-- Þeklinde periyodik kayýt kolonlarýmýzý ekleyebiliriz.
-- Kolonlar eklendikten sonra ilgili tablo aþaðýdaki gibi Temporal hale getirilir.
ALTER TABLE DERSKAYITLARI
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = DBO.DERSKAYITLARILOG))
