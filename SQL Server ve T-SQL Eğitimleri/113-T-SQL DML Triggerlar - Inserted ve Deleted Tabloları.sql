-- === DML TRIGGER ===
-- Bir tabloda INSET, UPDATE ve DELETE i�lemleri ger�ekle�tirildi�inde devreye giren yap�lard�r. Bu i�lemler sonucunda veya s�recinde devreye girerler.

-- *INSERTED TABLE
-- E�er bir tabloda INSERT i�lemi yap�l�yorsa arka planda i�lemler ilk �nce RAM'de olu�turulan INSERTED isimli bir tablo �zerinde yap�l�r. E�er i�lemde bir problem yoksa INSERTED tablosundaki veriler fiziksel tabloya INSERT edilir. ��lem bitti�inde RAM'de olu�turulan bu INSERTED tablosu silinir.

-- *DELETED TABLE
-- E�er bir tabloda DELETE i�lemi yap�l�yorsa arka planda i�lemler ilk �nce RAM'de olu�turulan DELETED isimli bir tablo �zerinde yap�l�r. E�er i�lemde bir problem yoksa DELETED tablosundaki veriler fiziksel tabloya INSERT edilir. ��lem bitti�inde RAM'de olu�turulan bu DELETED tablosu silinecektir.

-- E�er bir tabloda UPDATE i�lemi yap�l�yorsa RAM'de UPDATED isimli bir tablo OLU�TURULMAZ! ! !
-- SQL Server'da ki UPDATE mant��� �nce silme(DELETE) sonra eklemedir(INSERT).
-- E�er bir tabloda UPDATE i�lemi yap�l�yorsa arka planda RAM'de hem DELETED hem de INSERTED tablolar� olu�turulur ve i�lemler bunlar �zerinde yap�l�r.

-- NOT : UPDATE yaparken g�ncellenen kayd�n orjinali DELETED tablosunda, g�ncellendikten sonraki hali ise INSERTED tablosunda bulunmaktad�r. ��nk� g�ncelleme demek kayd� �nce silmek sonra eklemek demektir.

-- DELETED ve INSERTED tablolar�, ilgili sorgu sonucu olu�tuklar� i�in o sorgunun kulland��� kolonlara da sahip olur. B�ylece DELETED ve INSERTED tablolar�ndan SELECT sorgusu yapmak m�mk�nd�r.