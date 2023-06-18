-- [INSERT Komutu Ýle SELECT Sorgusu Sonucu Gelen Verileri Farklý Tabloya Kaydetme]
INSERT ORNEKPERSONELLER SELECT Adi,SoyAdi FROM Personeller
-- Burada dikkat etmeniz gereken nokta; SELECT sorgusunda dönen kolon sayýsý ile INSERT iþlemi yapýlacak tablonun kolon sayýsý birbirne eþit olmasý gerekmektedir. Ayný zamanda kolon özelliklerine de dikkat edilmelidir.

-- [SELECT Sorgusu Sonucu Gelen Verileri Farklý Bir Tablo Oluþturarak Kaydetme]
SELECT Adi, SoyAdi, Ulke INTO ORNEKPERSONELLER2 FROM Personeller

-- Bu yöntemle primary key ve foreign keyler oluþturulamazlar.

