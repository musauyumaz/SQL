-- EXEC Komutu
-- EXEC Komutu EXECUTE yani �al��t�r manas�na gelen bir komuttur.
-- T-SQL programlama dilindeki her�eyi �al��t�r�r diyebiliriz.
-- EXEC sanki bir fonksiyon niteli�inde �al��an tek t�rnaklar aras�na ald��� komutlar� �al��t�ran bir komuttur.
-- Asl�nda yazd���m�z sorgular/komutlar arka planda EXEC komutunun i�inde g�nderilir.

EXEC('SELECT * FROM Personeller')
SELECT * FROM Personeller

-- Yanl�� Kullan�m
EXEC('DECLARE @SAYAC INT = 0')
EXEC('PRINT @SAYAC')

-- Do�ru Kullan�m
EXEC('DECLARE @SAYAC INT = 0 PRINT @SAYAC')