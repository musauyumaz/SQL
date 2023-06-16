--Veritabaný yönetim sistemleri yaþayan yapýlardýr. Bir kurguyu kurduðumuz zaman o kurgu hayat boyu öyle gidecek diye dünyamýz olmuyor maalesef. Ýþte bu yaþayan yapýnýn saðlýklý bir þekilde yaþayabilmesi için bizim belirli zamanlarda belirli periyotlarda o sisteme bir takým bakýmlar yapmamýz gerekiyor.

-- Index Bozulmalarý:
	-- SQL Server'da yeni kayýtlar oluþtukça, kayýtlar silindikçe ve güncellendikçe index'ler bozulur. Bozulan indexleri düzeltmek için Index Rebuild ya da Index Reorganize iþlemi yapýlýr.

-- Ýstatistik Güncellemeleri
	-- SQL Server'da Sistem doðru index'i bulabilmek için istatistiklere bakar. 
	-- Yeni kayýtlar oluþtukça, kayýtlar silindikçe ve güncellendikçe bir index'te hangi kaydýn ne kadar olduðu(kayýt frekansý) deðiþir. Ýstatistikler ne kadar güncel ise sistem doðru indexi o kadar iyi bulur.

-- Database Shrink
	-- SQL Server'da bir database'e yeni kayýt eklendikçe database büyür ama kayýt silindikçe küçülmez. Eðer büyüyen bir veritabaný küçültülmek isteniyorsa shrink iþlemi gerçekleþtirilir.

-- Database Backup
	-- Bir veya birden fazla database'in yedeðinin alýnma iþlemidir. Full Differantial ya da Transaction Log Backup olarak istenen þekilde otomatik olarak çalýþacak backup iþlemidir.

-- Check Database Integrity
	-- Database index ve table page'lerde herhangi bir sýkýntý olup olmadýðýný kontrol eder. Yani database'de bir bozukluk olup olmadýðýna bakar.