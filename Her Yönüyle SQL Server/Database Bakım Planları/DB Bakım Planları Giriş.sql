--Veritaban� y�netim sistemleri ya�ayan yap�lard�r. Bir kurguyu kurdu�umuz zaman o kurgu hayat boyu �yle gidecek diye d�nyam�z olmuyor maalesef. ��te bu ya�ayan yap�n�n sa�l�kl� bir �ekilde ya�ayabilmesi i�in bizim belirli zamanlarda belirli periyotlarda o sisteme bir tak�m bak�mlar yapmam�z gerekiyor.

-- Index Bozulmalar�:
	-- SQL Server'da yeni kay�tlar olu�tuk�a, kay�tlar silindik�e ve g�ncellendik�e index'ler bozulur. Bozulan indexleri d�zeltmek i�in Index Rebuild ya da Index Reorganize i�lemi yap�l�r.

-- �statistik G�ncellemeleri
	-- SQL Server'da Sistem do�ru index'i bulabilmek i�in istatistiklere bakar. 
	-- Yeni kay�tlar olu�tuk�a, kay�tlar silindik�e ve g�ncellendik�e bir index'te hangi kayd�n ne kadar oldu�u(kay�t frekans�) de�i�ir. �statistikler ne kadar g�ncel ise sistem do�ru indexi o kadar iyi bulur.

-- Database Shrink
	-- SQL Server'da bir database'e yeni kay�t eklendik�e database b�y�r ama kay�t silindik�e k���lmez. E�er b�y�yen bir veritaban� k���lt�lmek isteniyorsa shrink i�lemi ger�ekle�tirilir.

-- Database Backup
	-- Bir veya birden fazla database'in yede�inin al�nma i�lemidir. Full Differantial ya da Transaction Log Backup olarak istenen �ekilde otomatik olarak �al��acak backup i�lemidir.

-- Check Database Integrity
	-- Database index ve table page'lerde herhangi bir s�k�nt� olup olmad���n� kontrol eder. Yani database'de bir bozukluk olup olmad���na bakar.