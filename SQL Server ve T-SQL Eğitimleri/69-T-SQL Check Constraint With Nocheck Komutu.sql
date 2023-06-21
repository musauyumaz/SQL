-- DÝKKAT!!!
-- CHECK constraint oluþturulmadan önce ilgili tabloda þarta aykýrý deðerler varsa eðer constraint oluþturulmayacaktýr! ! !
-- Ancak önceki kayýtlarý görmezden gelip yinede CHECK constrainti uygulamak istiyorsak WITH NOCHECK komutu kullanýlmalýdýr.

-- WITH NOCHECK Komutu
-- Þu ana kadar kayýtlarý görmezden gelip, CHECK constrainti uygulattýrýr.
ALTER TABLE ORNEKTABLO
WITH NOCHECK ADD CONSTRAINT KOLON2KONTROL CHECK((KOLON2 * 5) % 2 = 0)