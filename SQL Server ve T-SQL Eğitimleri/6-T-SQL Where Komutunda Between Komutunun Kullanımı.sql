-- BETWEEN Komutu
-- E�er ki WHERE �art� ile belirli bir de�er aral���n� belirtilecekse yani �art�m�z belirli bir de�er aral���ysa e�er BETWEEN komutu ile daha pratik �ekilde �art�m�z� yazabiliriz.

-- Do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri getirelim
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965