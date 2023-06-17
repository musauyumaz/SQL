-- LIKE Sorgular�
-- Veriler i�erisinde belirli �artlar koyabildi�imiz bir sorgulama �e�ididir. 
-- WHERE'de kolonlara belirli �artlar koyarken LIKE sorgusuyla birlikte kolonlar i�erisindeki verilere �artlar�m�z� koyabiliriz.

-- %(Genel �nemli De�il) Operat�r�

-- �sminin ba� harfi j olan personellerin ad�n� soyad�n� yazd�ral�m
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'j%'

-- �sminin son harfi y olan personellerin ad�n� soyad�n� yazd�ral�m
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE '%y'

-- �sminin son �� harfi ert olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE '%ert'

-- �sminin ilk harfi r, son harfi t olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'r%t'

-- Gereksiz bir kullan�m
SELECT * FROM Personeller WHERE Adi LIKE 'r%' AND Adi LIKE '%t'

-- �sminde an ge�en personelin ad�n� yazd�ral�m
SELECT Adi FROM Personeller WHERE Adi LIKE '%an%'

-- �sminin ba� harfi n olan ve i�erisinde an ge�en personeli getirelim.
SELECT * FROM Personeller WHERE Adi LIKE 'n%an%'

-- Gereksiz Bir kullan�m
SELECT * FROM Personeller WHERE Adi LIKE 'n%' AND Adi LIKE '%an%'

-- _(�zel �nemli De�il) Operat�r�
-- O anki karakterin �nemli olmad���n� belirtir.

-- �sminin ilk harfi a ikinci harfi farketmez ve ���nc� harfi d olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'a_d%'

-- �sminin ilk harfi m ikinci,���nc�,d�rd�nc� farketmez ve be�inci harfi a olan personeli getirelim
SELECT * FROM Personeller WHERE Adi LIKE 'm___a%'

-- [](ya da) Operat�r�
-- Arka planda OR mant���yla �al���r

-- �sminin ilk harfi n ya da m ya da r olan personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '[nmr]%'

-- �sminin i�erisinde a ya da i ge�en personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '%[ai]%'

-- [*-*](Alfabetik Aras�nda) Operat�r�
-- iki harf aras�ndaki t�m harfleri kapsayan bir operat�rd�r.

-- �sminin ba� harfi a ile k aras�nda alfabetik s�raya g�re herhangi bir harf olan personellerin ad�n� yazd�ral�m
SELECT Adi FROM Personeller WHERE Adi LIKE '[a-k]%'

-- [^*](De�il) Operat�r�
-- O anki bulundu�umuz karakterin de�ilini ifade eder.

-- �sminin ba� harfi a olmayan personelleri getirelim.
SELECT * FROM Personeller WHERE Adi LIKE '[^a]%'

-- �sminin ba� harfleri an olmayan personelleri getirelim
SELECT * FROM Personeller WHERE Adi LIKE '[^an]%'