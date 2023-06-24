-- STORED PROCEDURES (SAKLI YORDAMLAR)

-- == GENEL �ZELL�KLER� ==
-- Normal sorgudan h�zl� �al���rlar.
-- ��nk� normal sorgular Execute edilirken Execute Plan i�lemi yap�l�r. Bu i�lem s�ras�nda hangi tablodan veri �ekilecek hangi kolonlardan gelecek bunlar nerede vs. gibi i�lemler yap�l�r. Bir sorgu her �al��t�r�ld���nda bu i�lemler aynen tekrar tekrar yap�l�r. Fakat sorgu STORED PROCEDURE olarak �al��t�r�l�rsa bu i�lem sadece bir kere yap�l�r ve o da ilk �al��t�rma esnas�ndad�r. Di�er �al��t�rmalarda bu i�lemler yap�lmaz. Bundan dolay� h�z ve performansta art�� sa�lan�r.
-- ��erisinde SELECT INSERT UPDATE ve DELETE ilemleri yap�labilir.
-- �� i�e kullan�labilir.
-- ��ersinde fonksiyon olu�turulabilir.
-- Sorgular�m�z�n d��ar�dan alaca�� de�erler parametre olarak STORED PROCEDURE'lere ge�irilebildi�inden dolay� sorgular�m�z�n SQL INJECTION yemelerini de �nlemi� oluruz. Bu y�nleriyle de daha g�venlidirler.
-- STORED PROCEDURE fiziksel bir veritaban� nesnesidir. Haliyle CREATE komutu ile olu�turulur.
-- Fiziksel olarak ilgili veritaban�n�n Programmability -> Stored Procedures kombinasyonundan eri�ilebilirler.

-- == Prototip ==
-- CREATE PROC YA DA PROCEDURE [�S�M]
--(
-- VARSA PARAMETRELER
--)AS
-- YAZILACAK SORGULAR, KODLAR, �ARTLAR, FONKS�YONLAR, KOMUTLAR