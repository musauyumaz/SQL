-- #Bir Tabloyu Fiziksel Kopyalama
-- Elimizdeki tablolar üzerinde test yapacaksak ve bu test ilgili tablonun fiziksel halini deðiþtirme ihtimali varsa ya da veri kaybý söz konusuysa ya da deðiþikliði mahal býramak istemiyorsak geçici tablolarý kullanacaðýz ya da bu tablonun bir kopyasýný alacaðýz.

SELECT * INTO GECICIPERSONELLER FROM Personeller
-- Bu þekilde bir kullanýmda sadece PRIMARY KEY ve FOREIGN KEY constraint'ker oluþturulmazlar. Geri kalan herþey birebir fiziksel olarak oluþturulur.

SELECT * FROM GECICIPERSONELLER