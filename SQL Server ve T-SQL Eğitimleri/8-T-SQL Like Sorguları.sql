-- LIKE Sorgularý
-- Veriler içerisinde belirli þartlar koyabildiðimiz bir sorgulama çeþididir. 
-- WHERE'de kolonlara belirli þartlar koyarken LIKE sorgusuyla birlikte kolonlar içerisindeki verilere þartlarýmýzý koyabiliriz.

-- %(Genel Önemli Deðil) Operatörü

-- Ýsminin baþ harfi j olan personellerin adýný soyadýný yazdýralým
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'j%'

-- Ýsminin son harfi y olan personellerin adýný soyadýný yazdýralým
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE '%y'

-- Ýsminin son üç harfi ert olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE '%ert'

-- Ýsminin ilk harfi r, son harfi t olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'

-- Gereksiz bir kullaným
SELECT * FROM Personeller WHERE Adi LIKE 'r%' AND Adi LIKE '%t'

-- Ýsminde an geçen personelin adýný yazdýralým
SELECT Adi FROM Personeller WHERE Adi LIKE '%an%'

-- Ýsminin baþ harfi n olan ve içerisinde an geçen personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'

-- Gereksiz Bir kullaným
SELECT * FROM Personeller WHERE Adi LIKE 'n%' AND Adi LIKE '%an%'

-- _(Özel Önemli Deðil) Operatörü
-- O anki karakterin önemli olmadýðýný belirtir.

-- Ýsminin ilk harfi a ikinci harfi farketmez ve üçüncü harfi d olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'

-- Ýsminin ilk harfi m ikinci,üçüncü,dördüncü farketmez ve beþinci harfi a olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [](ya da) Operatörü
-- Arka planda OR mantýðýyla çalýþýr

-- Ýsminin ilk harfi n ya da m ya da r olan personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '[nmr]%'

-- Ýsminin içerisinde a ya da i geçen personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '%[ai]%'

-- [*-*](Alfabetik Arasýnda) Operatörü
-- iki harf arasýndaki tüm harfleri kapsayan bir operatördür.

-- Ýsminin baþ harfi a ile k arasýnda alfabetik sýraya göre herhangi bir harf olan personellerin adýný yazdýralým
SELECT Adi FROM Personeller WHERE Adi LIKE '[a-k]%'

-- [^*](Deðil) Operatörü
-- O anki bulunduðumuz karakterin deðilini ifade eder.

-- Ýsminin baþ harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'

-- Ýsminin baþ harfleri an olmayan personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'