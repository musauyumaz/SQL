-- #Bir Tabloyu Fiziksel Kopyalama
-- Elimizdeki tablolar �zerinde test yapacaksak ve bu test ilgili tablonun fiziksel halini de�i�tirme ihtimali varsa ya da veri kayb� s�z konusuysa ya da de�i�ikli�i mahal b�ramak istemiyorsak ge�ici tablolar� kullanaca��z ya da bu tablonun bir kopyas�n� alaca��z.

SELECT * INTO GECICIPERSONELLER FROM Personeller
-- Bu �ekilde bir kullan�mda sadece PRIMARY KEY ve FOREIGN KEY constraint'ker olu�turulmazlar. Geri kalan her�ey birebir fiziksel olarak olu�turulur.

SELECT * FROM GECICIPERSONELLER