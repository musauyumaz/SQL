-- #Bir Tabloyu ## �le Belle�e Ge�ici Kopyalama
SELECT * INTO ##GECICIPERSONELLER2 FROM Personeller

SELECT * FROM ##GECICIPERSONELLER2
INSERT ##GECICIPERSONELLER2(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
DELETE FROM ##GECICIPERSONELLER2 WHERE PersonelID = 3
UPDATE ##GECICIPERSONELLER2 SET Adi= 'GEN�AY', SoyAdi = 'YILDIZ' WHERE PersonelID = 5

--`##` ile olu�turulan tablo o an SQL Server'da oturum a�m�� ki�inin sunucu belle�inde olu�ur.
-- Bu tabloyu oturum a�an �ah�s ve onun SQL Server'�na d��ar�dan ula�an 3. �ah�slar kullanabilir.
-- E�er oturum a�an �ah�s SQL Server'dan disconnect olursa bu tablo bellekten silinir.
-- Di�er b�t�n �zellikleri # ile olu�turulan tablo ile ayn�d�r