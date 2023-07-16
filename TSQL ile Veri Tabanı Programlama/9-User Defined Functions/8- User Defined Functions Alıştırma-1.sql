-- 8- User Defined Functions Al��t�rma-1
-- Elimizde bir futbolcu listesi var. Bu futbolcu listesinde i�ine futbolcunun do�um tarihini al�p, ya��n� getiren fonksiyonu yaz�n�z.
-- Kaynak DB: LAB_UDF
-- Kaynak Tablo: LAB_PLAYER

SELECT * FROM LAB_PLAYER

CREATE FUNCTION DBO.GETAGE(@DATE AS DATE)
RETURNS INT
AS
BEGIN 
	RETURN DATEDIFF(YEAR,@DATE,GETDATE())
END

SELECT *,dbo.GETAGE(BIRTHDATE) AGE FROM LAB_PLAYER 
ORDER BY AGE