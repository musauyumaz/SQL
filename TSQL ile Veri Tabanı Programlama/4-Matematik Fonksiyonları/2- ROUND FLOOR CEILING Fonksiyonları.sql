-- 2- ROUND FLOOR CEILING Fonksiyonlarý
-- Yaptýklarý þey ondalýk deðerleri yuvarlamak ve virgülden kurtarmaktýr.
-- ROUND: Virgülden belli bir seviyeye kadar kurtarýr. Virgülden sonra kaç karakter olacaðýný biz belirliyoruz.
-- FLOOR: Aþaðý yuvarlar ve INT deðer elde etmemizi saðlar.
-- CEILING: Yukarý yuvarlar ve INT deðer elde etmemizi saðlar.

SELECT ROUND(CONVERT(FLOAT,156.4678),2) ROUND_, FLOOR(156.4678) FLOOR_, CEILING(156.4678) CEILING_