-- == Fonksiyonlarda WITH ENCRYPTION Komutu ==
-- Eðer ki yazmýþ olduðumuz fonksiyonlarýn kodlarýna 2. 3. þahýslarýn eriþimini engellemek istiyorsak WITH ENCRYPTION komutunu kullanmalýyýz.
-- WITH ENCRYPTION iþleminden sonra fonksiyonu oluþturan kiþide dahil kimse komutlarý göremez. Geri dönüþ yoktur. Ancak fonksiyonu oluþturan þahsýn komutlarn yedeðini bulundurmasý gerekmektedir. Ya da WITH ENCRYPTION olmaksýzýn fonksiyonu yeniden ALTER'lamalýyýz.
-- WITH ENCRYPTION AS keywordünden önce kullanýlmalýdýr.
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