-- NULLIF Fonksiyonu �le NULL Kontrol� 
-- Fonksiyona verilen kolon,Birinci parametredeki de�er e�er ikinci parametrede verilen de�ere e�it ise o kolonu NULL olarak getirir.
-- E�er ki parametredeki de�erler e�it de�ilse bize birinci parametredeki de�eri d�nd�r�r.
-- NULL de�erler raporlamada yani istatistiksel matematiksel i�lemlerde sonucu sapt�rabilmekte ve bekledi�imiz sonu�lar� alamamaktay�z. Nihayetinde NULL de�erleri ya h�kmedebilmeli de�i�tirmeli ya da NULL de�erleri hesaplamadan ��karmal�y�z.
-- NULL de�erleri serbest b�rakmay�n kendi amac�n�z do�rultusunda ister de�er atayacaks�n�z ister farkl� bir ayra� atayacaks�n�z ama NULL olarak b�rakmayacaks�n�z. Raporlamada her zaman NULL de�erlere dikkat etmek gerekir.

SELECT NULLIF(2,2)

SELECT HedefStokDuzeyi FROM Urunler
SELECT AVG(HedefStokDuzeyi) FROM Urunler

-- Hedef stok d�zeyi 0 olmayan �r�nlerin ortalamas� nedir?
SELECT AVG(HedefStokDuzeyi) FROM Urunler WHERE HedefStokDuzeyi <> 0
 
SELECT AVG(NULLIF(HedefStokDuzeyi,0)) FROM Urunler