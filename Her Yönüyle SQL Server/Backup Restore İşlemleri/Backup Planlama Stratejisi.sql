--Bizim i�in aslolan bu verinin minimum kay�pla �al��mas� bunun de�erini �l�mek i�inde verinin bizim i�in ne kadar k�ymetli oldu�una bakmam�z gerekir.
	-- �rne�in bir kargo �irketi i�in saniyelik veri �ok kritiktir. Daha m�tevazi �irketler i�in yar�m g�nl�k kay�p bir �ekilde tolere edilebilir durumdad�r.
	-- Bir al��veri� sitesi/kargo �irketi gibi minimum kay�pla yani istedi�iniz zaman saniyesinde geri d�nece�iniz bir yap�ya ihtiyac�n�z varsa burada kesinlikle ve kesinlikle Transaction Log Backup'� tercih etmek zorundas�n�z. Bunun i�in g�n i�inde 3 4 kere Full Backup al�p aralarda yar�m saatte bir bir saatte bir Transaction Log Backup alabilirsiniz.

-- Transaction Log Backup sisteminizde fazladan yer kaplar ne olursa olsun database'iniz recovery modu full modda oldu�u i�in �ok daha fazla i�lem ger�ekle�tiriyor ve biraz daha h�zl� donan�mlar ve biraz daha y�ksek yat�r�mlar istiyor.

--Standart normal bir i�letme i�in g�n i�erisinde 4 defa FULL yedek almak aralarda da yar�m saatlik DIFFERANTIAL yedek almak mant�kl� bir stratejidir.