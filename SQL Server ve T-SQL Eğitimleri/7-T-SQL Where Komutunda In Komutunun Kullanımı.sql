-- IN Komutu
-- Bir kolonda OR komutunu kullanarak yapt���m�z �artlar� IN komutu ile daha pratik bir �ekilde yapabilmekteyiz.

-- Ya�ad��� �ehrin London Tacoma ve Kirkland olan personellerin adlar�n� listeleyelim.
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')