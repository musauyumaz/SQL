-- TRANSACTION
--  Birden çok iþlemin bir arada yapýldýðý durumlarda eðer parçayý oluþturan iþlemlerden herhangi birinde sorun olursa tüm iþlemi iptal ettirmeye yarar.
-- Örneðin; kredi kartý ile alýþveriþ iþlemlerinde transaction iþlemi vardýr. Siz marketten ürün alýrken sizin hesabýnýzdan para düþülecek, marketin hesabýna para aktarýlýcaktýr. Bu iþlemde hata olmamasý gerekir ve bundan dolayý bu iþlem bir transaction bloðunda gerçekleþtirilmelidir. Bu esnada herhangi bir sorun olursa bütün iþlemler transaction tarafýndan iptal edilebilecektir.
-- BEGIN TRAN veya BEGIN TRANSACTION : Transaction iþlemi baþlatýr.
-- COMMIT TRAN : Transaction iþlemini baþarýyla sýna erdirir. Ýþlem(ler)i gerçekleþtirir.
-- ROLLBACK TRAN : Transaction iþlemini iptal eder. Ýþlem(ler)i geri alýr.
-- COMMIT TRAN yerine sadece COMMIT yazýlabilir
-- ROLLBACK TRAN yerine sadece ROLLBACK yazýlabilir.
-- Normalde default olarak herþey BEGIN TRAN ile baþlayýp COMMIT TRAN ile biter. !!! Biz bu yapýlarý kullanmasak bile!!!

