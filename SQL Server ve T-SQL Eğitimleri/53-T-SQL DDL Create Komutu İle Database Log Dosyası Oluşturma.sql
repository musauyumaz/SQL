-- CREATE �le Log Dosyas�yla Birlikte Database Olu�turma
CREATE DATABASE OrnekVeritabani
ON 
(
	NAME = 'GG',
	FILENAME = 'D:\GG.mdf',
	SIZE = 5,
	FILEGROWTH = 3
)
LOG 
ON 
(
	NAME = 'GG_LOG',
	FILENAME = 'D:\GG.ldf',
	SIZE = 5,
	FILEGROWTH = 3
)