-- 2- ROUND FLOOR CEILING Fonksiyonlar�
-- Yapt�klar� �ey ondal�k de�erleri yuvarlamak ve virg�lden kurtarmakt�r.
-- ROUND: Virg�lden belli bir seviyeye kadar kurtar�r. Virg�lden sonra ka� karakter olaca��n� biz belirliyoruz.
-- FLOOR: A�a�� yuvarlar ve INT de�er elde etmemizi sa�lar.
-- CEILING: Yukar� yuvarlar ve INT de�er elde etmemizi sa�lar.

SELECT ROUND(CONVERT(FLOAT,156.4678),2) ROUND_, FLOOR(156.4678) FLOOR_, CEILING(156.4678) CEILING_