-- WITH TIES Komutu
-- TOP komutunu kullan�rken kullan�d���m�z bir komuttur. 
-- Ba��l de�erlendirme yapmam�z� sa�lar. Yani bir yar��ma d���n�n ilk 3'e �d�l vereceksiniz ama 3.y'le ayn� puan alan di�er yar��mac�lar� da istiyorsan�z e�er bu komutu kullanabilirsiniz.
-- WITH TIES hangi kolona uygun bir �ekilde i�lem yapacakt�r. Hangisinde devaml�l�k s�z konusuysa o kolonu belirtmemiz gerekmektedir. Bunu da ORDER BY ile yapar�z.

SELECT * FROM [Satis Detaylari]

SELECT TOP 6 WITH TIES * FROM [Satis Detaylari] ORDER BY SatisID