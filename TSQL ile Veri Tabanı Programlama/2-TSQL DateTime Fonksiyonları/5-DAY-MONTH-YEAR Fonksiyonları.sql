-- 5-DAY-MONTH-YEAR Fonksiyonlar�
-- Herhangi bir date ya da datetime t�r�ndeki verinin i�erisinden g�n, ay, y�l gibi verileri �ekmemizi sa�lar.
SELECT 
YEAR(GETDATE()) YEAR_,
MONTH(GETDATE()) MONTH_,
DAY(GETDATE()) DAY_