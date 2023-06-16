--Bizim için aslolan bu verinin minimum kayýpla çalýþmasý bunun deðerini ölçmek içinde verinin bizim için ne kadar kýymetli olduðuna bakmamýz gerekir.
	-- Örneðin bir kargo þirketi için saniyelik veri çok kritiktir. Daha mütevazi þirketler için yarým günlük kayýp bir þekilde tolere edilebilir durumdadýr.
	-- Bir alýþveriþ sitesi/kargo þirketi gibi minimum kayýpla yani istediðiniz zaman saniyesinde geri döneceðiniz bir yapýya ihtiyacýnýz varsa burada kesinlikle ve kesinlikle Transaction Log Backup'ý tercih etmek zorundasýnýz. Bunun için gün içinde 3 4 kere Full Backup alýp aralarda yarým saatte bir bir saatte bir Transaction Log Backup alabilirsiniz.

-- Transaction Log Backup sisteminizde fazladan yer kaplar ne olursa olsun database'iniz recovery modu full modda olduðu için çok daha fazla iþlem gerçekleþtiriyor ve biraz daha hýzlý donanýmlar ve biraz daha yüksek yatýrýmlar istiyor.

--Standart normal bir iþletme için gün içerisinde 4 defa FULL yedek almak aralarda da yarým saatlik DIFFERANTIAL yedek almak mantýklý bir stratejidir.