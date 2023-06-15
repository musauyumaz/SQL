--##Daha Hýzlýdýr.
-- Execution plan çýkarýldýðý ve derlendiði için ilk 4 aþamayý atlar ve daha hýzlý çalýþýr.

-- Client Server mimarisinin aksine toplu iþlemler kendi içerisinde çalýþtýðý için sorgular network hýzýnda deðil RAM hýzýnda çalýþýr.

--##Kolay Güncelleme
-- Yazýlým güncellemeden deðiþiklikler yapýlabilir.
	-- Örneðin siz bir rapor yaptýnýz bu raporu uygulamalara bir þekilde gömdünüz. Bir deðiþiklik yapacaðýnýz zaman eðer Bbrada Ad Hoc Query kullandýðýnýzda bunu her yazdýðýz yerde güncellemeniz gerekir. Stored Procedure kullandýðýnýzda bunu sadece Procedure'ü deðiþtirmeniz yeterlidir. O Procedure'ü kullanan herkes otomatik olarak güncel halini çeker duruma gelecektir.

--##Güvenlidir
-- SQL Injection yöntemi : Zararsýz SQL kodlarýnýn içerisine bir þekilde zararlý SQL kodlarýný enjekte ederek sisteme saldýrma yöntemi. Çok yaygýn bir yöntemdir bu.
	-- Ad Hoc Query kullanýldýðýnad birçok önlem alýnmasý gerekmektedir. Oysa Stored Procedure SQL Injection'a kesin çözümdür. 

-- Güvenlidir. kritik raporlar için Stored Procedure bazýnda yetki verilebilir.
	-- Belli Procedure'leri sadece belli kullanýcýlar çalýþtýrsýn denilebilir. Bir tabloya normalde o kullanýcýnýn eriþimi yoktur fakat o tabloyu kullanan Store Procedure'e yetkiyi verdiðiniz zaman kullanýcý o tablonun ilgili alanlarýný bu sefer görebilir.

--##Yeteneklidir.
-- Herhangi bir programlama dilinde yazýlabilecek hemen hemen her türlü komut burada yazýlýp çalýþtýrýlabilir.

-- Standart T-SQL kodlarý kullanýlýrak ki orada yapabileceklerimizin haddi hesabý yok standart bir programlama dilinde yapabileceðimiz her þeyi burada yazabiliyoruz ve bir Store Procedure içinde saklayabiliyoruz.

--##Esnektir
-- Store Procedure'ler birbiri içerisinde çaðýrýlabilir.

-- Ýç içe çaðýrýlan Procedure'ler toplu þekilde çalýþanlardan çok daha performanslý þekilde çalýþýr.

--## Ölçülebilirdir
-- Performansý ölçülebilir. Kaç kez çalýþtýrýlmýþ en son ne zaman çalýþtýrýlmýþ gibi bilgiler görülebilir.