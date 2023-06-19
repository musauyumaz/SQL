-- SUBQUERY (�� ��e Sorgular)
-- Herhangi bir sorgunun ��kt�s� ba�ka bir sorgunun girdisi olabilir.
-- Herhangi bir sorgudan elde etti�imiz veriyi biz ba�ka bir sorguda kullanabilmekteyiz.
-- 

SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID WHERE Adi = 'NANCY'

SELECT SatisID,SatisTarihi FROM Satislar WHERE PersonelID = (SELECT PersonelID FROM Personeller WHERE Adi = 'NANCY')

SELECT Adi FROM Personeller WHERE Adi = (SELECT Adi FROM Personeller WHERE UnvanEki = 'Dr.')