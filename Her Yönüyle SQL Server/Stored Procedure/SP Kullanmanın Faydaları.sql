--##Daha H�zl�d�r.
-- Execution plan ��kar�ld��� ve derlendi�i i�in ilk 4 a�amay� atlar ve daha h�zl� �al���r.

-- Client Server mimarisinin aksine toplu i�lemler kendi i�erisinde �al��t��� i�in sorgular network h�z�nda de�il RAM h�z�nda �al���r.

--##Kolay G�ncelleme
-- Yaz�l�m g�ncellemeden de�i�iklikler yap�labilir.
	-- �rne�in siz bir rapor yapt�n�z bu raporu uygulamalara bir �ekilde g�md�n�z. Bir de�i�iklik yapaca��n�z zaman e�er Bbrada Ad Hoc Query kulland���n�zda bunu her yazd���z yerde g�ncellemeniz gerekir. Stored Procedure kulland���n�zda bunu sadece Procedure'� de�i�tirmeniz yeterlidir. O Procedure'� kullanan herkes otomatik olarak g�ncel halini �eker duruma gelecektir.

--##G�venlidir
-- SQL Injection y�ntemi : Zarars�z SQL kodlar�n�n i�erisine bir �ekilde zararl� SQL kodlar�n� enjekte ederek sisteme sald�rma y�ntemi. �ok yayg�n bir y�ntemdir bu.
	-- Ad Hoc Query kullan�ld���nad bir�ok �nlem al�nmas� gerekmektedir. Oysa Stored Procedure SQL Injection'a kesin ��z�md�r. 

-- G�venlidir. kritik raporlar i�in Stored Procedure baz�nda yetki verilebilir.
	-- Belli Procedure'leri sadece belli kullan�c�lar �al��t�rs�n denilebilir. Bir tabloya normalde o kullan�c�n�n eri�imi yoktur fakat o tabloyu kullanan Store Procedure'e yetkiyi verdi�iniz zaman kullan�c� o tablonun ilgili alanlar�n� bu sefer g�rebilir.

--##Yeteneklidir.
-- Herhangi bir programlama dilinde yaz�labilecek hemen hemen her t�rl� komut burada yaz�l�p �al��t�r�labilir.

-- Standart T-SQL kodlar� kullan�l�rak ki orada yapabileceklerimizin haddi hesab� yok standart bir programlama dilinde yapabilece�imiz her �eyi burada yazabiliyoruz ve bir Store Procedure i�inde saklayabiliyoruz.

--##Esnektir
-- Store Procedure'ler birbiri i�erisinde �a��r�labilir.

-- �� i�e �a��r�lan Procedure'ler toplu �ekilde �al��anlardan �ok daha performansl� �ekilde �al���r.

--## �l��lebilirdir
-- Performans� �l��lebilir. Ka� kez �al��t�r�lm�� en son ne zaman �al��t�r�lm�� gibi bilgiler g�r�lebilir.