-- == Kullan�c�ya G�re Dynamic Data Masking �zelli�ini Pasifle�tirme == 
GRANT UNMASK TO YETKILIUSER

EXECUTE AS USER = 'YETKILIUSER'
SELECT * FROM OGRENCILER2
