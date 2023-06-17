-- IN Komutu
-- Bir kolonda OR komutunu kullanarak yaptýðýmýz þartlarý IN komutu ile daha pratik bir þekilde yapabilmekteyiz.

-- Yaþadýðý þehrin London Tacoma ve Kirkland olan personellerin adlarýný listeleyelim.
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')