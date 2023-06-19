-- @@IDENTITY Komutu
-- Ýlgili veritabaný içerisinde yapýlan en son INSERT iþleminin identity deðerini bizlere getiren bir komuttur.
-- INSERT iþleminden sonra direkt @@IDENTITY komutunu çaðýrmaktayýz.

INSERT Kategoriler(KategoriAdi,Tanimi) VALUES('X','X Kategorisi')

SELECT @@IDENTITY

INSERT PERSONELLERX(Adi,SoyAdi) VALUES('Ela','Elif')
SELECT @@IDENTITY