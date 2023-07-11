-- 10-De�i�kenler Al��t�rma-6
-- Elimizde sat��lar tablomuz var. Bu tablo �zerinde kullan�c� taraf�ndan girilecek birden fazla �ehir ismine g�re arama yapmak istiyoruz. Kullan�c� taraf�ndan �ehirler virg�l ile ay�rt edilecek �ekilde girilecektir. Buna g�re �ehirlerin cirosunu getirecek sql c�mlesini yaz�n�z.
-- Kaynak DB:LAB_TSQL_VARIANTS
-- Kaynak Tablo : LAB05

DECLARE @CITY AS VARCHAR(100) = '�ZM�R,BURSA,ANKARA,�STANBUL,TRABZON'

DECLARE @SEHIRLER TABLE(SEHIR VARCHAR(100))
INSERT INTO @SEHIRLER(SEHIR) VALUES('�stanbul'),
								   ('�zmir'),
								   ('Ankara'),
								   ('Trabzon'),
								   ('Kahramanmara�'),
								   ('Bing�l'),
								   ('Denizli'),
								   ('Ayd�n')




SELECT CITY,SUM(TOTALPRICE) CIRO, SUM(AMOUNT) TOTALAMOUNT FROM LAB05
WHERE CITY IN(SELECT * FROM string_split(@CITY,','))
GROUP BY CITY