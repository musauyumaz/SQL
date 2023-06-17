-- Tarih Fonksiyonlar�

-- GETDATE : Bug�n�n tarihini verir.
SELECT GETDATE()

-- DATEADD : Verilen tarihe verildi�i kadar g�n, ay, y�l ekler
SELECT DATEADD(DAY,999,GETDATE())
SELECT DATEADD(MONTH,999,GETDATE())
SELECT DATEADD(YEAR,999,GETDATE())

-- DATEDIFF : �ki tarih aras�nda g�n�, ay� veya y�l� hesaplar.
SELECT DATEDIFF(DAY,'14.02.1999',GETDATE())
SELECT DATEDIFF(MONTH,'14.02.1999',GETDATE())
SELECT DATEDIFF(YEAR,'14.02.1999',GETDATE())

-- DATEPART : Verilen tarihin haftan�n, ay�n yahut y�l�n ka��nc� g�n� oldu�unu hesaplar
SELECT DATEPART(DW,GETDATE())
SELECT DATEPART(MONTH,GETDATE())
SELECT DATEPART(DAY,GETDATE())