-- STORED PROCEDURES (SAKLI YORDAMLAR)

-- == GENEL ÖZELLÝKLERÝ ==
-- Normal sorgudan hýzlý çalýþýrlar.
-- Çünkü normal sorgular Execute edilirken Execute Plan iþlemi yapýlýr. Bu iþlem sýrasýnda hangi tablodan veri çekilecek hangi kolonlardan gelecek bunlar nerede vs. gibi iþlemler yapýlýr. Bir sorgu her çalýþtýrýldýðýnda bu iþlemler aynen tekrar tekrar yapýlýr. Fakat sorgu STORED PROCEDURE olarak çalýþtýrýlýrsa bu iþlem sadece bir kere yapýlýr ve o da ilk çalýþtýrma esnasýndadýr. Diðer çalýþtýrmalarda bu iþlemler yapýlmaz. Bundan dolayý hýz ve performansta artýþ saðlanýr.
-- Ýçerisinde SELECT INSERT UPDATE ve DELETE ilemleri yapýlabilir.
-- Ýç içe kullanýlabilir.
-- Ýçersinde fonksiyon oluþturulabilir.
-- Sorgularýmýzýn dýþarýdan alacaðý deðerler parametre olarak STORED PROCEDURE'lere geçirilebildiðinden dolayý sorgularýmýzýn SQL INJECTION yemelerini de önlemiþ oluruz. Bu yönleriyle de daha güvenlidirler.
-- STORED PROCEDURE fiziksel bir veritabaný nesnesidir. Haliyle CREATE komutu ile oluþturulur.
-- Fiziksel olarak ilgili veritabanýnýn Programmability -> Stored Procedures kombinasyonundan eriþilebilirler.

-- == Prototip ==
-- CREATE PROC YA DA PROCEDURE [ÝSÝM]
--(
-- VARSA PARAMETRELER
--)AS
-- YAZILACAK SORGULAR, KODLAR, ÞARTLAR, FONKSÝYONLAR, KOMUTLAR