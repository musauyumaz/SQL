SET STATISTICS IO ON
SELECT * FROM CUSTOMERS
WHERE BIRTHDATE = '1996-03-09'
AND NAMESURNAME = 'ADA SÖZÜER'


--SET STATISTICS IO ON
--SELECT * FROM CUSTOMERS WITH (INDEX=IX1)
--WHERE BIRTHDATE = '1996-03-09'
--AND NAMESURNAME = 'ADA SÖZÜER'

--29969 IX1
--7		IX3


--WHERE NAMESURNAME = 'ADA SÖZÜER'

SELECT COUNT(*) FROM CUSTOMERS WHERE BIRTHDATE = '1996-03-09'
SELECT COUNT(*) FROM CUSTOMERS WHERE NAMESURNAME = 'ADA SÖZÜER'

--Her bir index'imizin altýnda bir istatistik deðeri tutulur. Ýstatistik deðerleri ne kadar güncelse ne kadar doðruysa iþte bizim sorgu performansýmýz o kadar artar. Çünkü doðru index'i bulmasý o kadar kolay olur.
--Her bir index'i oluþturduðumuzda ya da rebuild ettiðimizde buradaki istatistikler kendiliðinden güncellenir. Onun dýþýnda bizim bu istatistikleri güncellememiz performansý arttýran bir deðerdir.
--Ýstatistikleri güncellemek için index'i rebuild ya da reorganize edebiliriz. Ama index rebuild/reorganize etmek hergün mümkün olmayabilir çünkü sistem çalýþýyor ve sistemi aðýrlaþtýran biþey ama istatistikleri güncellemek o kadar aðýr deðildir.
--SP_UPDATESTATS dersem eðer veritabanýndaki tüm tablolar için istatistik deðerlerini günceller.
--Sadece bir tablo güncellemek için UPDATE STATISTICS [TABLO ADI]
--Ýstatiklerimizin hergün güncellenmesi gerekir. Bunun içinde hergün otomatik çalýþan bir database bakým planý oluþtururuz.