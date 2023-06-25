--TRANSACTION LOG BACKUP FULL BACKUP ve DIFFERANTIAL BACKUP'ýn aksine data dosyasý üzerinde deðil log dosyasý üzerinde bir yedek alma iþlemidir. OLTP sistemlerde yapýlan tüm hareketler log'a yazýldýðý için siz log'un yedeðini aldýðýnýzda oradaki tüm yapýlan hareketleri görebildiðiniz için aldýðýnýz yedek içerisindeki istediðiniz saniyeye istediðiniz harekete doðrudan dönüþ yapabilirsiniz.

 

--126940    2023-06-11 08:21:07.753

--127229    2023-06-11 09:26:04.083

--170051    2023-06-11 17:38:49.290

SELECT * FROM DATES ORDER BY 1 DESC

DELETE FROM DATES