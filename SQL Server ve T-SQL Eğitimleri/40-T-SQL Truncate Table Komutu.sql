-- TRUNCATE Komutu
-- Veritaban�ndaki herhangi bir tablomuzun t�m verilerini silmemizi sa�layan ve bu i�lemi yaparkende IDENTITY kolonunu s�f�rlamam�z� sa�layan bir komuttur.
-- DELETE ile de tablodaki t�m verileri silebiliyoruz ama TRUNCATE'ten tek fark� ilgili IDENTITY kolonunu s�f�rlamamakta sadece verileri silip IDENTITY kolonunu kald��� yerde b�rakmaktad�r. Haliyle herhangi bir veri eklendi�i vakit IDENTITY nerede kald�ysa oradan devam etmektedir.

SELECT * INTO PERSONELLERX FROM PERSONELLER

DELETE FROM PERSONELLERX
TRUNCATE TABLE PERSONELLERX