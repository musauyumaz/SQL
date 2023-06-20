-- CREATE �le Database Olu�turma
CREATE DATABASE OrnekVeritabani
-- Bu �ekilde bir kullan�m varsay�lan ayarlarda veritaban� olu�turacakt�r.

CREATE DATABASE OrnekVeritabani
ON 
(
	NAME = 'GG',
	FILENAME = 'D:\GG.mdf',
	SIZE = 5,
	FILEGROWTH = 3
)
-- NAME : Olu�turulacak veritaban�n�n fiziksel ismini belirtiyoruz.
-- FILENAME : Olu�turulacak veritaban�n�n dosyas�n�n fiziksel dizinini belirtiyoruz.
-- SIZE : Veritaban�n�n ba�lang�� boyutunu MB cinsinden ayarl�yoruz.
-- FILEGROWTH : Veritaban�n boyutu, ba�lang�� boyutunu ge�ti�i durumda boyutun ne kadar artmas� gerekti�ini MB cinsinden belirtiyoruz.