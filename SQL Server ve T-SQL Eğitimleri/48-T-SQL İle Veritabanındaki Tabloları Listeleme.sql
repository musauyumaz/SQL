-- T-SQL İle Veritabanındaki Tabloları Listeleme
-- Çalıştığınız veritabanının içindeki tablolara erişmek istiyorsanız aşağıdaki sorguları kullanabilirsiniz.

SELECT * FROM SYS.TABLES
-- ya da
SELECT * FROM SYSOBJECTS WHERE XTYPE='U'
