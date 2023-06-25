-- TRANSACTION
--  Birden �ok i�lemin bir arada yap�ld��� durumlarda e�er par�ay� olu�turan i�lemlerden herhangi birinde sorun olursa t�m i�lemi iptal ettirmeye yarar.
-- �rne�in; kredi kart� ile al��veri� i�lemlerinde transaction i�lemi vard�r. Siz marketten �r�n al�rken sizin hesab�n�zdan para d���lecek, marketin hesab�na para aktar�l�cakt�r. Bu i�lemde hata olmamas� gerekir ve bundan dolay� bu i�lem bir transaction blo�unda ger�ekle�tirilmelidir. Bu esnada herhangi bir sorun olursa b�t�n i�lemler transaction taraf�ndan iptal edilebilecektir.
-- BEGIN TRAN veya BEGIN TRANSACTION : Transaction i�lemi ba�lat�r.
-- COMMIT TRAN : Transaction i�lemini ba�ar�yla s�na erdirir. ��lem(ler)i ger�ekle�tirir.
-- ROLLBACK TRAN : Transaction i�lemini iptal eder. ��lem(ler)i geri al�r.
-- COMMIT TRAN yerine sadece COMMIT yaz�labilir
-- ROLLBACK TRAN yerine sadece ROLLBACK yaz�labilir.
-- Normalde default olarak her�ey BEGIN TRAN ile ba�lay�p COMMIT TRAN ile biter. !!! Biz bu yap�lar� kullanmasak bile!!!

