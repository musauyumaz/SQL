-- NULLIF Fonksiyonu Ýle NULL Kontrolü 
-- Fonksiyona verilen kolon,Birinci parametredeki deðer eðer ikinci parametrede verilen deðere eþit ise o kolonu NULL olarak getirir.
-- Eðer ki parametredeki deðerler eþit deðilse bize birinci parametredeki deðeri döndürür.
-- NULL deðerler raporlamada yani istatistiksel matematiksel iþlemlerde sonucu saptýrabilmekte ve beklediðimiz sonuçlarý alamamaktayýz. Nihayetinde NULL deðerleri ya hükmedebilmeli deðiþtirmeli ya da NULL deðerleri hesaplamadan çýkarmalýyýz.
-- NULL deðerleri serbest býrakmayýn kendi amacýnýz doðrultusunda ister deðer atayacaksýnýz ister farklý bir ayraç atayacaksýnýz ama NULL olarak býrakmayacaksýnýz. Raporlamada her zaman NULL deðerlere dikkat etmek gerekir.

SELECT NULLIF(2,2)

SELECT HedefStokDuzeyi FROM Urunler
SELECT AVG(HedefStokDuzeyi) FROM Urunler

-- Hedef stok düzeyi 0 olmayan ürünlerin ortalamasý nedir?
SELECT AVG(HedefStokDuzeyi) FROM Urunler WHERE HedefStokDuzeyi <> 0
 
SELECT AVG(NULLIF(HedefStokDuzeyi,0)) FROM Urunler