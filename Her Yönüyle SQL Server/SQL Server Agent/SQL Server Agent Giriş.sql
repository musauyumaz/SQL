--##SQL SERVER AGENT KAVRAMI

--SQL Server'da otomatik ve periyodik olarak �al��mas�n� istedi�imiz i�lemler i�in kulland���m�z yap�d�r.

-- SQL Server'�n i�indeki otomatik ve periyodik olarak �al��an i�lemleri y�netir.

-- Otomatik �al��an Yap�lar;	
	--Yedek Alma
	--Index bak�m planlar�
	--Database shrink planlar� ==> Zaman zaman database'ler i�lerine veri girildik�e b�y�r index'ler yap�ld�k�a b�y�r fakat i�erisinden veri silindik�e otomatik olarak k���lmez. ��te belli zamanlarda k���lmesi gerekir buna Database Shrink i�lemi denir.
	--Veri ambar� doldurma
	--Otomatik raporlar olu�turma
	--Mail G�nderme
	--...

-- Geri planda SQL Server Agent hizmetini kullan�r.    

-- Job Schedule Alert gibi kavramlar vard�r.
	 --Job => Periyodik olarak �al��mas�n� istedi�imiz i� bloklar�.
	 --Schedule => Bu i� bloklar�n�n takvimleri hangi periyotlarda �al��aca��n�n bilgisinin tutuldu�u yerler.
	 --Alert => Uyar� mekanizmalar�d�r.

-- T�m konfig�rasyonunu MSDB sistem database'inde tutar.