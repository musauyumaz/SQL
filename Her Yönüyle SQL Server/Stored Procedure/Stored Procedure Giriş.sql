-- T-SQL cümlelerinin SQL SERVER'ýn hafýzasýna kaydedilerek derlendiði ve derlenmiþ hallerinin çalýþtýrýldýðý yapýlardýr.

-- Standart SQL ya da T-SQL cümleleriyle yapmýþ olduðumuz sorgulara AD HOC QUERY deriz.

-- Bir AD HOC QUERY'i çalýþtýrýrken 6 tane adýmdan geçer
	-- QUERY => Query'yi göndermem herhangi bir araç üzerinden
	-- PARSE => Gönderilen Query parse edilir bu Query doðru bir query'mi
		-- Çalýþtýrýlabilir SQL cümlesimi sistem onu Parse ediyor.
		-- Ayný zamanda yetki kontrolü de yapar.
	-- OPTIMIZE => Execution planýn çýkartýlmasýdýr.
		-- Execution Plan ben bu sorguyu çekerken hangi tablo/tablolar için ki join'li bri tabloda gönderebilirim hangi Index'i kullanmalýyým. Bunu SQL SERVER'ýn çýkartmasý bunu çýkartýrkende kendine en az maliyetli olacak þekilde çalýþýr SQL SERVER. Bunun içinde Ýstatistiklere bakar ve istatistiklerin doðru olduðunu varsayarak kendisine en az maliyetli olacak index'i seçer.
	-- COMPILE => Artýk Execution Plan çýkartýldýktan sonra bunun makina/bilgisayar diline çevrilmiþ olmasý ve çalýþmaya hazýr olmasý/derlenmesi
	-- EXECUTE => Artýk derlenmiþ yapýnýn çalýþtýrýlmasý iþlemi yani veritabanýna baðlan veritabanýndan ilgili yerlerden ilgili verileri oku ve bunlarý hafýzada biriktir.
	-- RESULT => Son olarakta Result bu sonuçlarý senden talep eden client'a istemciye gönder.

-- Store Procedure oluþturduðunda ve Store Procedure'ü ilk defa çaðýrdýðýnda QUERY,PARSE,OPTIMIZE,COMPILE adýmlarý otomatik olarak gerçekleþir. Artýk derlenmiþ ve makina diline çevrilmiþ bir hal alýr. Sonuç itibariyle bu derlenmiþ yapýnýn Execute edilip sonucun döndürülmesi iþlemi kalýr ki bu da Stored Procedure performansýndaki en önemli etkenlerden biridir.