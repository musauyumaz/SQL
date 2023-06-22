-- Geçici Tablolar - Temporary Tables

-- Genellikle bir SQL Server üzerinde farklý lokasyonlarda birden fazla kiþinin çalýþtýðý durumlarda ya da verilerin test amaçlý geçici bir yerlerde tutulmasý, iþlenmesi amacýyla kullanýlan yapýlardýr.

-- Bilinen tablo yapýsýnýn aynýsýný saðlarlar. Tek farklarý fiziksel olarak oluþmazlar. Sadece bellekte geçici olarak oluþturulurlar.

-- SELECT INSERT UPDATE ve DELETE iþlemleri yapabilir. Ýliþki kurabilir.

-- Sunucu kapatýldýðýnda ya da oturum sahibi oturumu kapattýðýnda bellekten silinirler.

-- Fiziksel olarak tablolarýmýzda bir deðiþiklik olmasýný istemiyorsak verilerimizde oynama yapýlmasýný test edilme sürecinde herhangi bir deðiþikliðe mahal verilmesini istemiyorsak geçici tablolarý kullanýyoruz.

-- Yapýlan hiçbir iþlem fiziksel tabloya yansýtýlmamaktadýr.

