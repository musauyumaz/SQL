--SQL Server �zerinde yapt���m�z her bir i�lem bir transaction olarak ge�er. Yani INSERT UPDATE DELETE operasyonu bir transaction'd�r.

-- Transactional yap�y� destekleyen veritabanlar� OLTP(Online Transactional Process) sistemlerdir.

--Insert Into ile data pagelerimizi veritaban�na kaydetmek istiyoruz. �nce Log Data File'a(LDF)'e yaz�l�r. Daha sonra LDF dosyas�ndan Master Data File(MDF)a yaz�l�r. Herhangi bir problem olmazsa transaction'�m�z Commit edilir ve art�k ger�ek datan�n i�erisinde yaz�lm��t�r. Herhangi bir problem olursa e�er sistem kendini ROLLBACK yapar yani t�m i�lemleri geriye al�r. Yani Master Data File(MDF)'a yaz�lmadan Log Data File'�n �zerine gelir ve buradan da temizlenir B�ylelikle hi� olmam�� gibi g�r�n�r.