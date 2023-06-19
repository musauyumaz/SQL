-- WITH TIES Komutu
-- TOP komutunu kullanýrken kullanýdýðýmýz bir komuttur. 
-- Baðýl deðerlendirme yapmamýzý saðlar. Yani bir yarýþma düþünün ilk 3'e ödül vereceksiniz ama 3.y'le ayný puan alan diðer yarýþmacýlarý da istiyorsanýz eðer bu komutu kullanabilirsiniz.
-- WITH TIES hangi kolona uygun bir þekilde iþlem yapacaktýr. Hangisinde devamlýlýk söz konusuysa o kolonu belirtmemiz gerekmektedir. Bunu da ORDER BY ile yaparýz.

SELECT * FROM [Satis Detaylari]

SELECT TOP 6 WITH TIES * FROM [Satis Detaylari] ORDER BY SatisID