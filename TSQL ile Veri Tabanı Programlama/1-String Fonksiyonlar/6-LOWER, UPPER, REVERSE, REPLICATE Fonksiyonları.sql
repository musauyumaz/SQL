-- LOWER, UPPER, REVERSE, REPLICATE Fonksiyonlar�
-- LOWER => k���k harfe �evirir.
-- UPPER => b�y�k harfe �evirir.
-- REVERSE => tersten yazd�r�r.
-- REPLICATE => bir STR�NG ifadeyi bizim belirtti�imiz say�da tekrar ettirir.
SELECT LOWER('BTK AKADEM�')
SELECT UPPER('btk akademi')
SELECT REVERSE('BTK AKADEM�')
SELECT REPLICATE('BTK',5)

SELECT 'URUN' + REPLICATE('0',5-LEN('156')) + '156'