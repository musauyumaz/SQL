-- SUBQUERY (Ýç Ýçe Sorgular)
-- Herhangi bir sorgunun çýktýsý baþka bir sorgunun girdisi olabilir.
-- Herhangi bir sorgudan elde ettiðimiz veriyi biz baþka bir sorguda kullanabilmekteyiz.
-- 

SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID WHERE Adi = 'NANCY'

SELECT SatisID,SatisTarihi FROM Satislar WHERE PersonelID = (SELECT PersonelID FROM Personeller WHERE Adi = 'NANCY')

SELECT Adi FROM Personeller WHERE Adi = (SELECT Adi FROM Personeller WHERE UnvanEki = 'Dr.')