-- === DML TRIGGER ===
-- Bir tabloda INSET, UPDATE ve DELETE iþlemleri gerçekleþtirildiðinde devreye giren yapýlardýr. Bu iþlemler sonucunda veya sürecinde devreye girerler.

-- *INSERTED TABLE
-- Eðer bir tabloda INSERT iþlemi yapýlýyorsa arka planda iþlemler ilk önce RAM'de oluþturulan INSERTED isimli bir tablo üzerinde yapýlýr. Eðer iþlemde bir problem yoksa INSERTED tablosundaki veriler fiziksel tabloya INSERT edilir. Ýþlem bittiðinde RAM'de oluþturulan bu INSERTED tablosu silinir.

-- *DELETED TABLE
-- Eðer bir tabloda DELETE iþlemi yapýlýyorsa arka planda iþlemler ilk önce RAM'de oluþturulan DELETED isimli bir tablo üzerinde yapýlýr. Eðer iþlemde bir problem yoksa DELETED tablosundaki veriler fiziksel tabloya INSERT edilir. Ýþlem bittiðinde RAM'de oluþturulan bu DELETED tablosu silinecektir.

-- Eðer bir tabloda UPDATE iþlemi yapýlýyorsa RAM'de UPDATED isimli bir tablo OLUÞTURULMAZ! ! !
-- SQL Server'da ki UPDATE mantýðý önce silme(DELETE) sonra eklemedir(INSERT).
-- Eðer bir tabloda UPDATE iþlemi yapýlýyorsa arka planda RAM'de hem DELETED hem de INSERTED tablolarý oluþturulur ve iþlemler bunlar üzerinde yapýlýr.

-- NOT : UPDATE yaparken güncellenen kaydýn orjinali DELETED tablosunda, güncellendikten sonraki hali ise INSERTED tablosunda bulunmaktadýr. Çünkü güncelleme demek kaydý önce silmek sonra eklemek demektir.

-- DELETED ve INSERTED tablolarý, ilgili sorgu sonucu oluþtuklarý için o sorgunun kullandýðý kolonlara da sahip olur. Böylece DELETED ve INSERTED tablolarýndan SELECT sorgusu yapmak mümkündür.