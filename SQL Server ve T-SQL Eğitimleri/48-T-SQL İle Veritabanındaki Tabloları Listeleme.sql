-- T-SQL �le Veritaban�ndaki Tablolar� Listeleme
-- �al��t���n�z veritaban�n�n i�indeki tablolara eri�mek istiyorsan�z a�a��daki sorgular� kullanabilirsiniz.

SELECT * FROM SYS.TABLES
-- ya da
SELECT * FROM SYSOBJECTS WHERE XTYPE='U'
