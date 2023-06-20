-- ISNULL Fonksiyonu Ýle NULL Kontrolü
-- COALESCE Fonksiyonunda olduðu gibi eðer ki null olmayan deðerler varsa onlarý ayný þekil býrakýyor. NULL deðerlerin yerine de parametrede belirtilen deðeri veriyor.

SELECT MusteriAdi,ISNULL(Bolge,'Bölge Bilinmiyor') FROM Musteriler