-- == INLINE FUNCTIONS ==
-- Geriye bir değer değil tablo döndüren fonksiyonlardır.
-- Geriye tablo göndereceği için bu fonksiyonlar çalıştırılırken sanki bir tablodan sorgu çalıştırılır gibi çalıştırılırlar. Bu yönleriyle VIEW'lara benzerler. VIEW ile yapılan işlevler Inline Functions'larla yapılabilir.
-- Genellikle VIEW'le benzer işlevler için VIEW kullanılmasını öneririm.

-- == FONKSİYON TANIMLAMA ==
-- Inline fonksiyonlara tanımlandıktan sonra Programmability -> Functions -> Table Valued Functions kombinasyonundan erişilebilir.
-- Dikkat ! ! !
-- Inline Function oluşturulurken BEGIN END yapısı kullanılmaz.
CREATE FUNCTION FC_GONDER(@AD NVARCHAR(20), @SOYAD NVARCHAR(20)) RETURNS TABLE 
AS 
	RETURN SELECT Adi, SoyAdi FROM Personeller WHERE Adi = @AD AND SoyAdi = @SOYAD