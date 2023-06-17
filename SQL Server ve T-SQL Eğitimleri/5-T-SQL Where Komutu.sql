USE Northwind

-- SELECT Sorgular�nda (Where) �art� Yazmak
-- SELECT sorgular�nda elde etti�imiz tablolara belirli �artlar yazmam�z� sa�lar.

SELECT * FROM Personeller

-- Personeller tablosunda �ehri London olanlar� listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London'

-- Personeller tablosunda ba�l� �al��t��� ki�i say�s� 5'ten k���k olanlar� listeleyelim.
SELECT * FROM Personeller WHERE BagliCalistigiKisi < 5

-- AND Operat�r�
-- Personeller tablosunda �ehri London ve �lkesi UK olanlar� listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke='UK'

-- OR Operat�r�
-- Personeller tablosunda UnvanEki 'Mr.' olan veya �ehri Seattle olan t�m personelleri listeleyelim.
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'

-- Kar���k �rnekler
-- Ad� Robert soyad� King olan personelin t�m bilgilerini �ek
SELECT * FROM Personeller WHERE Adi='Robert' AND SoyAdi='King'

-- PersonelID'si 5 olan personeli getir.
SELECT * FROM Personeller WHERE PersonelID=5

-- PersonelID'si 5'ten b�y�k ve e�it olan t�m personelleri getir.
SELECT * FROM Personeller WHERE PersonelID >=5

-- <> E�it De�ilse
-- =  E�itse
-- <= K���k ve E�itse
-- >= B�y�k ve E�itse

-- Fonksiyon Sonu�lar�n� �art Olarak Kullanmak
-- 1993 y�l�nda i�e ba�layanlar� listele.
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)=1993

-- 1992 y�l�ndan sonra i�e ba�layanlar� listele
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)>1992

-- Do�um g�n� ay�n 29'u olmayan personelleri listeleyelim
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29

-- Do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri getirelim
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965
SELECT * FROM Personeller WHERE YEAR(DogumTarihi)> 1950 AND YEAR(DogumTarihi) < 1965

-- Ya�ad��� �ehrin London, Tacoma ve Kirkland olan personellerin ad�n� listeleyelim
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')
SELECT Adi FROM Personeller WHERE Sehir ='London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
