-- @@IDENTITY Komutu
-- �lgili veritaban� i�erisinde yap�lan en son INSERT i�leminin identity de�erini bizlere getiren bir komuttur.
-- INSERT i�leminden sonra direkt @@IDENTITY komutunu �a��rmaktay�z.

INSERT Kategoriler(KategoriAdi,Tanimi) VALUES('X','X Kategorisi')

SELECT @@IDENTITY

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Ela','Elif')
SELECT @@IDENTITY