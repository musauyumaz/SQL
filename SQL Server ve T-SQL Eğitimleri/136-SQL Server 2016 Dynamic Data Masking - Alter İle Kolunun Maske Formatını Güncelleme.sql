-- == ALTER �le Dynamic Data Masking Kolonunda De�i�iklik Yapma ==

ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(3,"XXX",0)')

ALTER TABLE OGRENCILER2
ADD EKKOLON NVARCHAR(MAX) MASKED WITH (FUNCTION = 'PARTIAL(2,"AAA",4)')

EXECUTE AS USER='YETKILIUSER'
SELECT * FROM OGRENCILER2