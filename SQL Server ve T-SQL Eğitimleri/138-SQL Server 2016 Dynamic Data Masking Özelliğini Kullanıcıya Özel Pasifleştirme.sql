-- == Kullanıcıya Göre Dynamic Data Masking Özelliğini Pasifleştirme == 
GRANT UNMASK TO YETKILIUSER

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2
