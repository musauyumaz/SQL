-- == INLINE FUNCTIONS ==
-- Geriye bir deðer deðil tablo döndüren fonksiyonlardýr.
-- Geriye tablo göndereceði için bu fonksiyonlar çalýþtýrýlýrken sanki bir tablodan sorgu çalýþtýrýlýr gibi çalýþtýrýlýrlar. Bu yönleriyle VIEW'lara benzerler. VIEW ile yapýlan iþlevler Inline Functions'larla yapýlabilir.
-- Genellikle VIEW'le benzer iþlevler için VIEW kullanýlmasýný öneririm.

-- == FONKSÝYON TANIMLAMA ==
-- Inline fonksiyonlara tanýmlandýktan sonra Programmability -> Functions -> Table Valued Functions kombinasyonundan eriþilebilir.
-- Dikkat ! ! !
-- Inline Function oluþturulurken BEGIN END yapýsý kullanýlmaz.
CREATE FUNCTION FC_GONDER(@AD NVARCHAR(20), @SOYAD NVARCHAR(20)) RETURNS TABLE 
AS 
	RETURN SELECT Adi, SoyAdi FROM Personeller WHERE Adi = @AD AND SoyAdi = @SOYAD