-- @@ROWCOUNT Komutu
-- Biz yapmýþ olduðumuz iþlem neticesinde kaç tane elemanýn etkilendiðini bulabiliyoruz.

DELETE FROM PERSONELLERX WHERE SoyAdi = 'Gençay'
SELECT @@ROWCOUNT

SELECT * FROM Personeller 
SELECT @@ROWCOUNT

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Gençay','Yýldýz'),
									  ('Ahmet','Uslu'),
									  ('Aslý','Güngör')
SELECT @@ROWCOUNT