-- SCALAR FUNCTION

-- == Fonksiyon Tan�mlama ==
-- Scalar fonksiyonlara tan�mland�ktan sonra Programmability -> Functions -> Scalar Valued Functions kombinasyonundan eri�ilebilir.
CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS
	BEGIN
		RETURN @SAYI1 +  @SAYI2
	END