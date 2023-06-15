SET STATISTICS IO ON
SELECT * FROM CUSTOMERS
WHERE BIRTHDATE = '1996-03-09'
AND NAMESURNAME = 'ADA S�Z�ER'


--SET STATISTICS IO ON
--SELECT * FROM CUSTOMERS WITH (INDEX=IX1)
--WHERE BIRTHDATE = '1996-03-09'
--AND NAMESURNAME = 'ADA S�Z�ER'

--29969 IX1
--7		IX3


--WHERE NAMESURNAME = 'ADA S�Z�ER'

SELECT COUNT(*) FROM CUSTOMERS WHERE BIRTHDATE = '1996-03-09'
SELECT COUNT(*) FROM CUSTOMERS WHERE NAMESURNAME = 'ADA S�Z�ER'

--Her bir index'imizin alt�nda bir istatistik de�eri tutulur. �statistik de�erleri ne kadar g�ncelse ne kadar do�ruysa i�te bizim sorgu performans�m�z o kadar artar. ��nk� do�ru index'i bulmas� o kadar kolay olur.
--Her bir index'i olu�turdu�umuzda ya da rebuild etti�imizde buradaki istatistikler kendili�inden g�ncellenir. Onun d���nda bizim bu istatistikleri g�ncellememiz performans� artt�ran bir de�erdir.
--�statistikleri g�ncellemek i�in index'i rebuild ya da reorganize edebiliriz. Ama index rebuild/reorganize etmek herg�n m�mk�n olmayabilir ��nk� sistem �al���yor ve sistemi a��rla�t�ran bi�ey ama istatistikleri g�ncellemek o kadar a��r de�ildir.
--SP_UPDATESTATS dersem e�er veritaban�ndaki t�m tablolar i�in istatistik de�erlerini g�nceller.
--Sadece bir tablo g�ncellemek i�in UPDATE STATISTICS [TABLO ADI]
--�statiklerimizin herg�n g�ncellenmesi gerekir. Bunun i�inde herg�n otomatik �al��an bir database bak�m plan� olu�tururuz.