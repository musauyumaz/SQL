-- FULLBACKUP --> Burada database'de ne var ne yoksa hepsini yede�ini al�r ve bu data art�k ta��nabilir bir data haline gelir. Herhangi ba�ka bir SQL Server'da backup'tan datan�n tamam�yla birlikte veritaban� olu�turulabilir.

-- DIFFERENTIAL BACKUP --> En son al�nan FULLBACKUP ile aradaki fark� al�r. B�ylelikle �ok fazla yer kaplamam�� oluyor ve sonu� itibariyle backup alma i�lemi de database'in ba�tan sona okunmas� i�lemi oldu�u i�inde sistemi nispeten yoran bir uygulama database'in tamam�n�n yede�ini almak yerine sonu� itibariyle elimde bir 10 y�ll�k database var fakat 1 g�n i�erisindeki bir saat i�erisindeki de�i�en datan�n boyu belli. O zaman sadece o kadar�n� alma i�ine yar�yor.
--En son al�nan FULLBACKUP'la benim DIFFERANTIONAL yani fark BACKUP'� ald���m zaman aras�ndaki yedek.

-- TRANSACTION LOG BACKUP --> MDF ve LDF dosyalar�m�z vard�r. Yap�lan her i�lem �nce LDF'e yaz�l�r. Burada Transaction Log'un yede�ini almam�z� sa�l�yor.