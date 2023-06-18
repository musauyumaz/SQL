-- OUTER JOIN
-- INNER JOIN'de eþleþen kayýtlar getiriliyordu. OUTER JOIN'de ise eþleþmeyen kayýtlarda getirilmektedir.

-- LEFT JOIN
-- JOIN ifadesinin solundaki tablodan tüm kayýtlarý getirir. Saðýndaki tablodan eþleþenleri yan yana eþleþmeyenleri null olarak getirir.
SELECT * FROM OYUNCULAR O LEFT OUTER JOIN FÝLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FÝLMLER O LEFT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
--VEYA
SELECT * FROM OYUNCULAR O LEFT JOIN FÝLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FÝLMLER O LEFT JOIN OYUNCULAR F ON F.FILMID = O.FILMID

-- RIGHT JOIN
-- JOIN'in saðýndaki tablonun tamamýný getirecek, Solundakinden eþleþenleri ayný satýrda eþleþmeyenleri de null olarak getirecek
SELECT * FROM OYUNCULAR O RIGHT OUTER JOIN FÝLMLER F ON F.FILMID = O.FILMID
SELECT * FROM FÝLMLER O RIGHT OUTER JOIN OYUNCULAR F ON F.FILMID = O.FILMID
-- VEYA
SELECT * FROM OYUNCULAR O RIGHT JOIN FÝLMLER F ON F.FILMID = O.FILMID

-- FULL JOIN
--  Joinin iki tarafýndaki tablolardan eþleþen eþleþmeyen hepsini getirir.
SELECT * FROM OYUNCULAR O FULL OUTER JOIN FÝLMLER F ON F.FILMID = O.FILMID
-- VEYA
SELECT * FROM OYUNCULAR O FULL JOIN FÝLMLER F ON F.FILMID = O.FILMID