-- == INLINE FUNCTIONS ==
-- Geriye bir de�er de�il tablo d�nd�ren fonksiyonlard�r.
-- Geriye tablo g�nderece�i i�in bu fonksiyonlar �al��t�r�l�rken sanki bir tablodan sorgu �al��t�r�l�r gibi �al��t�r�l�rlar. Bu y�nleriyle VIEW'lara benzerler. VIEW ile yap�lan i�levler Inline Functions'larla yap�labilir.
-- Genellikle VIEW'le benzer i�levler i�in VIEW kullan�lmas�n� �neririm.

-- == FONKS�YON TANIMLAMA ==
-- Inline fonksiyonlara tan�mland�ktan sonra Programmability -> Functions -> Table Valued Functions kombinasyonundan eri�ilebilir.
-- Dikkat ! ! !
-- Inline Function olu�turulurken BEGIN END yap�s� kullan�lmaz.
CREATE FUNCTION FC_GONDER(@AD NVARCHAR(20), @SOYAD NVARCHAR(20)) RETURNS TABLE 
AS 
	RETURN SELECT Adi, SoyAdi FROM Personeller WHERE Adi = @AD AND SoyAdi = @SOYAD