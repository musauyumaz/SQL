-- LOWER, UPPER, REVERSE, REPLICATE Fonksiyonlarý
-- LOWER => küçük harfe çevirir.
-- UPPER => büyük harfe çevirir.
-- REVERSE => tersten yazdýrýr.
-- REPLICATE => bir STRÝNG ifadeyi bizim belirttiðimiz sayýda tekrar ettirir.
SELECT LOWER('BTK AKADEMÝ')
SELECT UPPER('btk akademi')
SELECT REVERSE('BTK AKADEMÝ')
SELECT REPLICATE('BTK',5)

SELECT 'URUN' + REPLICATE('0',5-LEN('156')) + '156'