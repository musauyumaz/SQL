-- == Kullanýcýya Göre Dynamic Data Masking Özelliðini Pasifleþtirme == 
GRANT UNMASK TO YETKILIUSER

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2
