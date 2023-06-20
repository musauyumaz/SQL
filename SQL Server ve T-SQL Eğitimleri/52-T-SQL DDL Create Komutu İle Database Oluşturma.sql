-- CREATE Ýle Database Oluþturma
CREATE DATABASE OrnekVeritabani
-- Bu þekilde bir kullaným varsayýlan ayarlarda veritabaný oluþturacaktýr.

CREATE DATABASE OrnekVeritabani
ON 
(
	NAME = 'GG',
	FILENAME = 'D:\GG.mdf',
	SIZE = 5,
	FILEGROWTH = 3
)
-- NAME : Oluþturulacak veritabanýnýn fiziksel ismini belirtiyoruz.
-- FILENAME : Oluþturulacak veritabanýnýn dosyasýnýn fiziksel dizinini belirtiyoruz.
-- SIZE : Veritabanýnýn baþlangýç boyutunu MB cinsinden ayarlýyoruz.
-- FILEGROWTH : Veritabanýn boyutu, baþlangýç boyutunu geçtiði durumda boyutun ne kadar artmasý gerektiðini MB cinsinden belirtiyoruz.