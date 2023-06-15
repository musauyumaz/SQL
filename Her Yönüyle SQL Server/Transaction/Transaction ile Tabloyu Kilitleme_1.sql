--Bizim SQL Server'da tek satýr olarak çalýþtýrdýðýmýz iþlem bloðu da aslýnda otomatik olarak bir transaction iþlemidir. Baþýna BEGIN TRAN ve ROLLBACK TRAN yazmayýz sadece iþlem çalýþýrken transaction'ý otomatik olarak baþlatýr ve transaction'ý log dosyasýna yazmaya baþlar. Ýþlem bittikten sonra da transaction'ý commit eder ve çýkar eðer herhangi bir hatayla karþýlaþýrsa da sistem orada hata verip iþlemi gerçekleþtirmez. Fakat bu yapý tek satýrlýk kod bloklarý için geçerlidir.

-- Toplu iþlemlerde ise transaction kontrolünü bizim gerçekleþtirmemiz gerekmektedir.

--TRIGGER'lar transaction'larýn bir parçasýdýr.

SELECT * FROM ITEMS WHERE ID=4

BEGIN TRAN 
UPDATE ITEMS SET UNITPRICE=55 WHERE ID=4

SELECT * FROM ITEMS_LOG WHERE ID=4

ROLLBACK

