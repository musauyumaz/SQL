-- CROSS JOIN 
-- Ýki tablo arasýnda kartezyen çarpýmý yapar. Kartezyen çarpýmýyla birleþtirir. Ýki küme arasýnda elemanlarý tek tek birbirleriyle eþleþtirme iþlemine kartezyen iþlemi deriz.
-- CROSS JOIN kullanarak iki tabloyu birleþtirirsek eðer elde edilen sonuç iki tablonun eleman sayýlarýnýn çarpýmlarý kadardýr.
-- WHERE ile þart uygulayamayýz.

SELECT COUNT(*) FROM Personeller
SELECT COUNT(*) FROM Bolge

SELECT P.Adi,B.BolgeID FROM Personeller P CROSS JOIN BOLGE B