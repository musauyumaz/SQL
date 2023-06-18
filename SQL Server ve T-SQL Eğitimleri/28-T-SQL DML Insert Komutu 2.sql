-- [INSERT Komutu �le SELECT Sorgusu Sonucu Gelen Verileri Farkl� Tabloya Kaydetme]
INSERT ORNEKPERSONELLER SELECT Adi,SoyAdi FROM Personeller
-- Burada dikkat etmeniz gereken nokta; SELECT sorgusunda d�nen kolon say�s� ile INSERT i�lemi yap�lacak tablonun kolon say�s� birbirne e�it olmas� gerekmektedir. Ayn� zamanda kolon �zelliklerine de dikkat edilmelidir.

-- [SELECT Sorgusu Sonucu Gelen Verileri Farkl� Bir Tablo Olu�turarak Kaydetme]
SELECT Adi, SoyAdi, Ulke INTO ORNEKPERSONELLER2 FROM Personeller

-- Bu y�ntemle primary key ve foreign keyler olu�turulamazlar.

