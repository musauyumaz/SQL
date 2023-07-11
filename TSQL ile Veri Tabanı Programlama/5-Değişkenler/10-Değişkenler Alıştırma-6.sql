-- 10-Deðiþkenler Alýþtýrma-6
-- Elimizde satýþlar tablomuz var. Bu tablo üzerinde kullanýcý tarafýndan girilecek birden fazla þehir ismine göre arama yapmak istiyoruz. Kullanýcý tarafýndan þehirler virgül ile ayýrt edilecek þekilde girilecektir. Buna göre þehirlerin cirosunu getirecek sql cümlesini yazýnýz.
-- Kaynak DB:LAB_TSQL_VARIANTS
-- Kaynak Tablo : LAB05

DECLARE @CITY AS VARCHAR(100) = 'ÝZMÝR,BURSA,ANKARA,ÝSTANBUL,TRABZON'

DECLARE @SEHIRLER TABLE(SEHIR VARCHAR(100))
INSERT INTO @SEHIRLER(SEHIR) VALUES('Ýstanbul'),
								   ('Ýzmir'),
								   ('Ankara'),
								   ('Trabzon'),
								   ('Kahramanmaraþ'),
								   ('Bingöl'),
								   ('Denizli'),
								   ('Aydýn')




SELECT CITY,SUM(TOTALPRICE) CIRO, SUM(AMOUNT) TOTALAMOUNT FROM LAB05
WHERE CITY IN(SELECT * FROM string_split(@CITY,','))
GROUP BY CITY