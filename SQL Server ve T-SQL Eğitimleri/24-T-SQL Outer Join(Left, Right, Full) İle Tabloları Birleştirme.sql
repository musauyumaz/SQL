-- OUTER JOIN
-- INNER JOIN'de e�le�en kay�tlar getiriliyordu. OUTER JOIN'de ise e�le�meyen kay�tlarda getirilmektedir.

-- LEFT JOIN
-- JOIN ifadesinin solundaki tablodan t�m kay�tlar� getirir. Sa��ndaki tablodan e�le�enleri yan yana e�le�meyenleri null olarak getirir.
SELECT * FROM OYUNCULAR O LEFT OUTER JOIN F�LMLER F ON F.FILMID = O.FILMID
SELECT * FROM F�LMLER O LEFT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
--VEYA
SELECT * FROM OYUNCULAR O LEFT JOIN F�LMLER F ON F.FILMID = O.FILMID
SELECT * FROM F�LMLER O LEFT JOIN OYUNCULAR F ON F.FILMID = O.FILMID

-- RIGHT JOIN
-- JOIN'in sa��ndaki tablonun tamam�n� getirecek, Solundakinden e�le�enleri ayn� sat�rda e�le�meyenleri de null olarak getirecek
SELECT * FROM OYUNCULAR O RIGHT OUTER JOIN F�LMLER F ON F.FILMID = O.FILMID
SELECT * FROM F�LMLER O RIGHT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
-- VEYA
SELECT * FROM OYUNCULAR O RIGHT JOIN F�LMLER F ON F.FILMID = O.FILMID

-- FULL JOIN
--  Joinin iki taraf�ndaki tablolardan e�le�en e�le�meyen hepsini getirir.
SELECT * FROM OYUNCULAR O FULL OUTER JOIN F�LMLER F ON F.FILMID = O.FILMID
-- VEYA
SELECT * FROM OYUNCULAR O FULL JOIN F�LMLER F ON F.FILMID = O.FILMID