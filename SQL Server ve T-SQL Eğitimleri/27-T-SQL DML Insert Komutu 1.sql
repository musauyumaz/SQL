-- INSERT 
-- INSERT [TABLO ADI](KOLONLAR) VALUES(DE�ERLER)
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
INSERT PERSONELLER VALUES('UYUMAZ','MUSA','YAZILIM VE VER�TABANI UZMANI','YM', '14.02.1999',GETDATE(),'ESK��EH�R','�� ANADOLU','26600','T�RK�YE','02221111111',NULL,NULL,NULL,NULL,NULL)

-- [Dikkat Edilmesi Gerekenler!!!]
-- INTO Komutu �le Yaz�labilir
INSERT INTO Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
-- Kolonun kabul etti�i veri tipi ve karakter uzunlu�unda kay�t yap�lmal�d�r.
-- NOT NULL olan kolonlar bo� b�rak�lmayacaklar�ndan dolay� mutlaka de�er g�nderilmelidir.
INSERT Personeller(Unvan,UnvanEki) VALUES ('a','b')
-- Otomatik artan(identity) kolonlara de�er g�nderilmez.
-- Tablodaki se�ilen yahut b�t�n kolonlara de�er g�nderilece�i belirtilip, g�nderilmezse hata verecektir
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA')
INSERT Personeller VALUES ('MUSA','UYUMAZ')

-- [Pratik Kullan�m]
INSERT Musteriler(MusteriAdi,Adres) VALUES('H�LM�','�ORUM')
INSERT Musteriler(MusteriAdi,Adres) VALUES('NECAT�','�ANKIRI')
INSERT Musteriler(MusteriAdi,Adres) VALUES('RIFKI','YOZGAT')

INSERT Musteriler(MusteriAdi,Adres) VALUES('H�LM�','�ORUM'),
										  ('H�LM�','�ORUM'),
										  ('H�LM�','�ORUM')