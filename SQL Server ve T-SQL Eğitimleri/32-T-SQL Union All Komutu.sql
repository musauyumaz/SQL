-- UNION ALL
-- UNION tekrarlý kayýtlarý getirmez. Tekrarlý kayýtlarý getirmek için UNION ALL komutu kullanýlmalýdýr.
SELECT Adi,SoyAdi FROM Personeller 
UNION ALL
SELECT Adi,SoyAdi FROM Personeller 

