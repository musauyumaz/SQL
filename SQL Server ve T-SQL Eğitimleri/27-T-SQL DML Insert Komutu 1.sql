-- INSERT 
-- INSERT [TABLO ADI](KOLONLAR) VALUES(DEÐERLER)
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
INSERT PERSONELLER VALUES('UYUMAZ','MUSA','YAZILIM VE VERÝTABANI UZMANI','YM', '14.02.1999',GETDATE(),'ESKÝÞEHÝR','ÝÇ ANADOLU','26600','TÜRKÝYE','02221111111',NULL,NULL,NULL,NULL,NULL)

-- [Dikkat Edilmesi Gerekenler!!!]
-- INTO Komutu Ýle Yazýlabilir
INSERT INTO Personeller(Adi,SoyAdi) VALUES ('MUSA','UYUMAZ')
-- Kolonun kabul ettiði veri tipi ve karakter uzunluðunda kayýt yapýlmalýdýr.
-- NOT NULL olan kolonlar boþ býrakýlmayacaklarýndan dolayý mutlaka deðer gönderilmelidir.
INSERT Personeller(Unvan,UnvanEki) VALUES ('a','b')
-- Otomatik artan(identity) kolonlara deðer gönderilmez.
-- Tablodaki seçilen yahut bütün kolonlara deðer gönderileceði belirtilip, gönderilmezse hata verecektir
INSERT Personeller(Adi,SoyAdi) VALUES ('MUSA')
INSERT Personeller VALUES ('MUSA','UYUMAZ')

-- [Pratik Kullaným]
INSERT Musteriler(MusteriAdi,Adres) VALUES('HÝLMÝ','ÇORUM')
INSERT Musteriler(MusteriAdi,Adres) VALUES('NECATÝ','ÇANKIRI')
INSERT Musteriler(MusteriAdi,Adres) VALUES('RIFKI','YOZGAT')

INSERT Musteriler(MusteriAdi,Adres) VALUES('HÝLMÝ','ÇORUM'),
										  ('HÝLMÝ','ÇORUM'),
										  ('HÝLMÝ','ÇORUM')