-- TRUNCATE Komutu
-- Veritabanýndaki herhangi bir tablomuzun tüm verilerini silmemizi saðlayan ve bu iþlemi yaparkende IDENTITY kolonunu sýfýrlamamýzý saðlayan bir komuttur.
-- DELETE ile de tablodaki tüm verileri silebiliyoruz ama TRUNCATE'ten tek farký ilgili IDENTITY kolonunu sýfýrlamamakta sadece verileri silip IDENTITY kolonunu kaldýðý yerde býrakmaktadýr. Haliyle herhangi bir veri eklendiði vakit IDENTITY nerede kaldýysa oradan devam etmektedir.

SELECT * INTO PERSONELLERX FROM PERSONELLER

DELETE FROM PERSONELLERX
TRUNCATE TABLE PERSONELLERX