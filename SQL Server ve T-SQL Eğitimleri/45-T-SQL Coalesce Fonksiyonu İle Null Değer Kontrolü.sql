-- COALESCE Fonksiyonu �le NULL Kontrol�
-- Verdi�imiz kolondaki NULL de�erlere verdi�imiz ikinci parametredeki de�ere g�re de�i�tirecektir. 

SELECT MusteriAdi, COALESCE(Bolge,'B�LGE B�L�NM�YOR') FROM Musteriler