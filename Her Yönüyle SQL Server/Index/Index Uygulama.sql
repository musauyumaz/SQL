--SELECT COUNT(*) FROM CUSTOMERS 
--SQLSERVER'ýn en küçük yapý taþý page DATA'lar page'ler halinde tutulur. Pagelerde 8KB'lýk data bloklarýdýr.
--SET STATISTICS IO ON --> iþlem gerçekleþirken ne kadarlýk okuma yaptýðýný gösterir. 
--SP_SPACEUSED 'CUSTOMERS' --> Tablo hakkýnda bizlere bilgi verir.


SET STATISTICS IO ON 
SELECT * FROM CUSTOMERS 
WHERE NAMESURNAME = 'ÖMER ÇOLAKOÐLU'

SELECT 54369*8/1024.01

SP_SPACEUSED 'CUSTOMERS'
430888 KB

CREATE NONCLUSTERED INDEX IX1 ON CUSTOMERS 
(
NAMESURNAME
)