-- FULLBACKUP --> Burada database'de ne var ne yoksa hepsini yedeðini alýr ve bu data artýk taþýnabilir bir data haline gelir. Herhangi baþka bir SQL Server'da backup'tan datanýn tamamýyla birlikte veritabaný oluþturulabilir.

-- DIFFERENTIAL BACKUP --> En son alýnan FULLBACKUP ile aradaki farký alýr. Böylelikle çok fazla yer kaplamamýþ oluyor ve sonuç itibariyle backup alma iþlemi de database'in baþtan sona okunmasý iþlemi olduðu içinde sistemi nispeten yoran bir uygulama database'in tamamýnýn yedeðini almak yerine sonuç itibariyle elimde bir 10 yýllýk database var fakat 1 gün içerisindeki bir saat içerisindeki deðiþen datanýn boyu belli. O zaman sadece o kadarýný alma iþine yarýyor.
--En son alýnan FULLBACKUP'la benim DIFFERANTIONAL yani fark BACKUP'ý aldýðým zaman arasýndaki yedek.

-- TRANSACTION LOG BACKUP --> MDF ve LDF dosyalarýmýz vardýr. Yapýlan her iþlem önce LDF'e yazýlýr. Burada Transaction Log'un yedeðini almamýzý saðlýyor.