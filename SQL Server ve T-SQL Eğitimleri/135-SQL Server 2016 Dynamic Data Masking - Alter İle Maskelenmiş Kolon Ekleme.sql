-- == ALTER �le Kolona Dynamic Data Masking Uygulama ==

ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(3,"XXX",0)')

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2