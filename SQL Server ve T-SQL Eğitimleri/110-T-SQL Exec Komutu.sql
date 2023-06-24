-- EXEC Komutu
-- EXEC Komutu EXECUTE yani çalýþtýr manasýna gelen bir komuttur.
-- T-SQL programlama dilindeki herþeyi çalýþtýrýr diyebiliriz.
-- EXEC sanki bir fonksiyon niteliðinde çalýþan tek týrnaklar arasýna aldýðý komutlarý çalýþtýran bir komuttur.
-- Aslýnda yazdýðýmýz sorgular/komutlar arka planda EXEC komutunun içinde gönderilir.

EXEC('SELECT * FROM Personeller')
SELECT * FROM Personeller

-- Yanlýþ Kullaným
EXEC('DECLARE @SAYAC INT = 0')
EXEC('PRINT @SAYAC')

-- Doðru Kullaným
EXEC('DECLARE @SAYAC INT = 0 PRINT @SAYAC')