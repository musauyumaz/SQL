--SELECT COUNT(*) FROM CUSTOMERS 
--SQLSERVER'�n en k���k yap� ta�� page DATA'lar page'ler halinde tutulur. Pagelerde 8KB'l�k data bloklar�d�r.
--SET STATISTICS IO ON --> i�lem ger�ekle�irken ne kadarl�k okuma yapt���n� g�sterir. 
--SP_SPACEUSED 'CUSTOMERS' --> Tablo hakk�nda bizlere bilgi verir.


SET STATISTICS IO ON 
SELECT * FROM CUSTOMERS 
WHERE NAMESURNAME = '�MER �OLAKO�LU'

SELECT 54369*8/1024.01

SP_SPACEUSED 'CUSTOMERS'
430888 KB

CREATE NONCLUSTERED INDEX IX1 ON CUSTOMERS 
(
NAMESURNAME
)