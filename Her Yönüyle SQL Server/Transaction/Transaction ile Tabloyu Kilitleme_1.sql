--Bizim SQL Server'da tek sat�r olarak �al��t�rd���m�z i�lem blo�u da asl�nda otomatik olarak bir transaction i�lemidir. Ba��na BEGIN TRAN ve ROLLBACK TRAN yazmay�z sadece i�lem �al���rken transaction'� otomatik olarak ba�lat�r ve transaction'� log dosyas�na yazmaya ba�lar. ��lem bittikten sonra da transaction'� commit eder ve ��kar e�er herhangi bir hatayla kar��la��rsa da sistem orada hata verip i�lemi ger�ekle�tirmez. Fakat bu yap� tek sat�rl�k kod bloklar� i�in ge�erlidir.

-- Toplu i�lemlerde ise transaction kontrol�n� bizim ger�ekle�tirmemiz gerekmektedir.

--TRIGGER'lar transaction'lar�n bir par�as�d�r.

SELECT * FROM ITEMS WHERE ID=4

BEGIN TRAN 
UPDATE ITEMS SET UNITPRICE=55 WHERE ID=4

SELECT * FROM ITEMS_LOG WHERE ID=4

ROLLBACK

