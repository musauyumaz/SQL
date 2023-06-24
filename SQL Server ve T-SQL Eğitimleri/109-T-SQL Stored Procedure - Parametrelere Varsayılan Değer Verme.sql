-- == Parametrelere Varsayýlan Deðer ==
CREATE PROC SP_PERSONELEKLE2
(
	@AD VARCHAR(50) = 'ÝSÝMSÝZ',
	@SOYAD VARCHAR(50) = 'SOYÝSÝMSÝZ',
	@SEHIR VARCHAR(50) = 'ÞEHÝRSÝZ'
)AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@AD,@SOYAD,@SEHIR)

EXEC SP_PERSONELEKLE2 'SERHAT','UYUMAZ','ESKÝÞEHÝR'
-- Burada varsayýlan deðerler devreye girmemektedir.
SELECT * FROM Personeller
EXEC SP_PERSONELEKLE2
-- Normalde bu þekilde parametrelere deðer göndermeksizin çalýþmamasý lazým ama varsayýlan deðerler tanýmda belirtildiði için devreye girmektedirler.

Exec SP_PERSONELEKLE2 'ÝBRAHÝM'
-- @Ad parametresi ÝBRAHÝM deðerini alacaktýr. Diðer parametreler varsayýlan deðerleri