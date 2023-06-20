-- T-SQL Ýle Veritabanýndaki Tablolarý Listeleme
-- Çalýþtýðýnýz veritabanýnýn içindeki tablolara eriþmek istiyorsanýz aþaðýdaki sorgularý kullanabilirsiniz.

SELECT * FROM SYS.TABLES
-- ya da
SELECT * FROM SYSOBJECTS WHERE XTYPE='U'
