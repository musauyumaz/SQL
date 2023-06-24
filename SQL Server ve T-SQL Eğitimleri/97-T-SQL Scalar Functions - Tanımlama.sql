-- SCALAR FUNCTION

-- == Fonksiyon Tanýmlama ==
-- Scalar fonksiyonlara tanýmlandýktan sonra Programmability -> Functions -> Scalar Valued Functions kombinasyonundan eriþilebilir.
CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS
	BEGIN
		RETURN @SAYI1 +  @SAYI2
	END