-- SCALAR FUNCTION

-- == Fonksiyon Tanımlama ==
-- Scalar fonksiyonlara tanımlandıktan sonra Programmability -> Functions -> Scalar Valued Functions kombinasyonundan erişilebilir.
CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS
	BEGIN
		RETURN @SAYI1 +  @SAYI2
	END