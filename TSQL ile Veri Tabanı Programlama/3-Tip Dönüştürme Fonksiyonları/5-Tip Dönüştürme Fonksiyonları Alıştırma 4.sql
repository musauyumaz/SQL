-- 5-Tip D�n��t�rme Fonksiyonlar� Al��t�rma 4
-- Elimizde bir �r�nler listesi var. Bu �r�n listesi i�in tekil bir ak�ll� barkod olu�turmam�z gerekiyor. ��ine �r�nkodu alan ve bu koda g�re ak�ll� barkod �reten T-SQL kodunu yaz�n�z.
-- Barkod Format�:
-- Categorycode-ITEMCODE-YEAR-MONTH-DAY-HOUR-MINUTE-SECOND
-- �rnek:GDA-000025-2022-06-15-12-24-37
-- Kaynak Tablo: LAB03
SELECT * FROM LAB03

SELECT CATEGORY1CODE+'-'+REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE + '-' + REPLACE(CONVERT(VARCHAR,GETDATE(),102),'.','-') + '-' +  REPLACE(CONVERT(VARCHAR,GETDATE(),108),':','-') FROM LAB03

SELECT CONVERT(VARCHAR,GETDATE(),108)

SELECT CATEGORY1CODE + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE + REPLACE(CONVERT(VARCHAR,GETDATE(),102),'.','') +  REPLACE(CONVERT(VARCHAR,GETDATE(),108),':','') FROM LAB03