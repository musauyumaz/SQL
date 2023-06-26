-- == Var Olan Tabloyu Temporal Tables Olarak Ayarlama ==
DROP TABLE DERSKAYITLARI

CREATE TABLE DERSKAYITLARI
(
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERS NVARCHAR(MAX),
	ONAY BIT
)

INSERT DERSKAYITLARI VALUES('MATEMAT�K',1),
						   ('F�Z�K',1),
						   ('K�MYA',1),
						   ('T�RK�E',0),
						   ('CO�RAFYA',0),
						   ('VATANDA�LIK',0)

-- E�er bu tabloyu temporal yapmak istiyorsak dikkat ! ! !
-- Tablo i�erisinde veri var m�? Yok mu? E�er varsa yeni eklenecek olan StartDate ve EndDate kolonlar� bo� kalamayacaklar� i�in varsay�lan de�erlerin belirtilmesi gerekmektedir. Yok e�er veri yoksa bu i�lemi d���nmemize gerek olmayacakt�r.

-- E�er Veri Yoksa...
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)

-- E�er Veri Varsa...
ALTER TABLE DERSKAYITLARI
ADD 
STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL
DEFAULT CAST('1900-01-01 00:00:00.0000000' AS DATETIME2),
ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL
DEFAULT CAST('9999-12-31 23:59:59.9999999' AS DATETIME2),
PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)

-- �eklinde periyodik kay�t kolonlar�m�z� ekleyebiliriz.
-- Kolonlar eklendikten sonra ilgili tablo a�a��daki gibi Temporal hale getirilir.
ALTER TABLE DERSKAYITLARI
SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = DBO.DERSKAYITLARILOG))
