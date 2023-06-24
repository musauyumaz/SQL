--##SQL SERVER AGENT KAVRAMI

--SQL Server'da otomatik ve periyodik olarak çalýþmasýný istediðimiz iþlemler için kullandýðýmýz yapýdýr.

-- SQL Server'ýn içindeki otomatik ve periyodik olarak çalýþan iþlemleri yönetir.

-- Otomatik Çalýþan Yapýlar;	
	--Yedek Alma
	--Index bakým planlarý
	--Database shrink planlarý ==> Zaman zaman database'ler içlerine veri girildikçe büyür index'ler yapýldýkça büyür fakat içerisinden veri silindikçe otomatik olarak küçülmez. Ýþte belli zamanlarda küçülmesi gerekir buna Database Shrink iþlemi denir.
	--Veri ambarý doldurma
	--Otomatik raporlar oluþturma
	--Mail Gönderme
	--...

-- Geri planda SQL Server Agent hizmetini kullanýr.    

-- Job Schedule Alert gibi kavramlar vardýr.
	 --Job => Periyodik olarak çalýþmasýný istediðimiz iþ bloklarý.
	 --Schedule => Bu iþ bloklarýnýn takvimleri hangi periyotlarda çalýþacaðýnýn bilgisinin tutulduðu yerler.
	 --Alert => Uyarý mekanizmalarýdýr.

-- Tüm konfigürasyonunu MSDB sistem database'inde tutar.