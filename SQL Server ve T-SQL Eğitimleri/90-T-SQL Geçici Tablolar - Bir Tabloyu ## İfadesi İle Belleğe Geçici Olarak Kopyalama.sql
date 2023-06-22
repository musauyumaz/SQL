-- #Bir Tabloyu ## Ýle Belleðe Geçici Kopyalama
SELECT * INTO ##GECICIPERSONELLER2 FROM Personeller

SELECT * FROM ##GECICIPERSONELLER2
INSERT ##GECICIPERSONELLER2(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM ##GECICIPERSONELLER2 WHERE PersonelID = 3
UPDATE ##GECICIPERSONELLER2 SET Adi= 'GENÇAY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5

--`##` ile oluþturulan tablo o an SQL Server'da oturum açmýþ kiþinin sunucu belleðinde oluþur.
-- Bu tabloyu oturum açan þahýs ve onun SQL Server'ýna dýþarýdan ulaþan 3. þahýslar kullanabilir.
-- Eðer oturum açan þahýs SQL Server'dan disconnect olursa bu tablo bellekten silinir.
-- Diðer bütün özellikleri # ile oluþturulan tablo ile aynýdýr