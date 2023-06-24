-- == Fonksiyonlarda WITH ENCRYPTION Komutu ==
-- E�er ki yazm�� oldu�umuz fonksiyonlar�n kodlar�na 2. 3. �ah�slar�n eri�imini engellemek istiyorsak WITH ENCRYPTION komutunu kullanmal�y�z.
-- WITH ENCRYPTION i�leminden sonra fonksiyonu olu�turan ki�ide dahil kimse komutlar� g�remez. Geri d�n�� yoktur. Ancak fonksiyonu olu�turan �ahs�n komutlarn yede�ini bulundurmas� gerekmektedir. Ya da WITH ENCRYPTION olmaks�z�n fonksiyonu yeniden ALTER'lamal�y�z.
-- WITH ENCRYPTION AS keyword�nden �nce kullan�lmal�d�r.
CREATE FUNCTION ORNEKFONKSIYON() RETURNS INT
WITH ENCRYPTION 
AS 
	BEGIN
		RETURN 3
	END

CREATE FUNCTION ORNEKFONKSIYON2() RETURNS TABLE
WITH ENCRYPTION 
AS 
	RETURN SELECT * FROM Personeller

ALTER FUNCTION ORNEKFONKSIYON() RETURNS INT
AS 
	BEGIN
		RETURN 3
	END