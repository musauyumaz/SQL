-- == Parametrelere Varsay�lan De�er ==
CREATE PROC SP_PERSONELEKLE2
(
	@AD VARCHAR(50) = '�S�MS�Z',
	@SOYAD VARCHAR(50) = 'SOY�S�MS�Z',
	@SEHIR VARCHAR(50) = '�EH�RS�Z'
)AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@AD,@SOYAD,@SEHIR)

EXEC SP_PERSONELEKLE2 'SERHAT','UYUMAZ','ESK��EH�R'
-- Burada varsay�lan de�erler devreye girmemektedir.
SELECT * FROM Personeller
EXEC SP_PERSONELEKLE2
-- Normalde bu �ekilde parametrelere de�er g�ndermeksizin �al��mamas� laz�m ama varsay�lan de�erler tan�mda belirtildi�i i�in devreye girmektedirler.

Exec SP_PERSONELEKLE2 '�BRAH�M'
-- @Ad parametresi �BRAH�M de�erini alacakt�r. Di�er parametreler varsay�lan de�erleri