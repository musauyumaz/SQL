--SQL Server üzerinde yaptýðýmýz her bir iþlem bir transaction olarak geçer. Yani INSERT UPDATE DELETE operasyonu bir transaction'dýr.

-- Transactional yapýyý destekleyen veritabanlarý OLTP(Online Transactional Process) sistemlerdir.

--Insert Into ile data pagelerimizi veritabanýna kaydetmek istiyoruz. Önce Log Data File'a(LDF)'e yazýlýr. Daha sonra LDF dosyasýndan Master Data File(MDF)a yazýlýr. Herhangi bir problem olmazsa transaction'ýmýz Commit edilir ve artýk gerçek datanýn içerisinde yazýlmýþtýr. Herhangi bir problem olursa eðer sistem kendini ROLLBACK yapar yani tüm iþlemleri geriye alýr. Yani Master Data File(MDF)'a yazýlmadan Log Data File'ýn üzerine gelir ve buradan da temizlenir Böylelikle hiç olmamýþ gibi görünür.