-- @@ROWCOUNT Komutu
-- Biz yapm�� oldu�umuz i�lem neticesinde ka� tane eleman�n etkilendi�ini bulabiliyoruz.

DELETE FROM PERSONELLERX WHERE SoyAdi = 'Gen�ay'
SELECT @@ROWCOUNT

SELECT * FROM Personeller 
SELECT @@ROWCOUNT

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Gen�ay','Y�ld�z'),
									  ('Ahmet','Uslu'),
									  ('Asl�','G�ng�r')
SELECT @@ROWCOUNT