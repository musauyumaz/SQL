-- T-SQL c�mlelerinin SQL SERVER'�n haf�zas�na kaydedilerek derlendi�i ve derlenmi� hallerinin �al��t�r�ld��� yap�lard�r.

-- Standart SQL ya da T-SQL c�mleleriyle yapm�� oldu�umuz sorgulara AD HOC QUERY deriz.

-- Bir AD HOC QUERY'i �al��t�r�rken 6 tane ad�mdan ge�er
	-- QUERY => Query'yi g�ndermem herhangi bir ara� �zerinden
	-- PARSE => G�nderilen Query parse edilir bu Query do�ru bir query'mi
		-- �al��t�r�labilir SQL c�mlesimi sistem onu Parse ediyor.
		-- Ayn� zamanda yetki kontrol� de yapar.
	-- OPTIMIZE => Execution plan�n ��kart�lmas�d�r.
		-- Execution Plan ben bu sorguyu �ekerken hangi tablo/tablolar i�in ki join'li bri tabloda g�nderebilirim hangi Index'i kullanmal�y�m. Bunu SQL SERVER'�n ��kartmas� bunu ��kart�rkende kendine en az maliyetli olacak �ekilde �al���r SQL SERVER. Bunun i�inde �statistiklere bakar ve istatistiklerin do�ru oldu�unu varsayarak kendisine en az maliyetli olacak index'i se�er.
	-- COMPILE => Art�k Execution Plan ��kart�ld�ktan sonra bunun makina/bilgisayar diline �evrilmi� olmas� ve �al��maya haz�r olmas�/derlenmesi
	-- EXECUTE => Art�k derlenmi� yap�n�n �al��t�r�lmas� i�lemi yani veritaban�na ba�lan veritaban�ndan ilgili yerlerden ilgili verileri oku ve bunlar� haf�zada biriktir.
	-- RESULT => Son olarakta Result bu sonu�lar� senden talep eden client'a istemciye g�nder.

-- Store Procedure olu�turdu�unda ve Store Procedure'� ilk defa �a��rd���nda QUERY,PARSE,OPTIMIZE,COMPILE ad�mlar� otomatik olarak ger�ekle�ir. Art�k derlenmi� ve makina diline �evrilmi� bir hal al�r. Sonu� itibariyle bu derlenmi� yap�n�n Execute edilip sonucun d�nd�r�lmesi i�lemi kal�r ki bu da Stored Procedure performans�ndaki en �nemli etkenlerden biridir.