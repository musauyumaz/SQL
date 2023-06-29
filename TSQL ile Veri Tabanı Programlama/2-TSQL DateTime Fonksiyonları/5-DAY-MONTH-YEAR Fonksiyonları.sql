-- 5-DAY-MONTH-YEAR Fonksiyonlarý
-- Herhangi bir date ya da datetime türündeki verinin içerisinden gün, ay, yýl gibi verileri çekmemizi saðlar.
SELECT 
YEAR(GETDATE()) YEAR_,
MONTH(GETDATE()) MONTH_,
DAY(GETDATE()) DAY_