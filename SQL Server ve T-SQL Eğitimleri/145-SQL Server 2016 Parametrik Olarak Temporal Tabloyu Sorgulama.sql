-- == History Tablosuna Özel Temporal Tabloyu Sorgulama ==
-- SELECT * FROM DERSKAYITLARI DK INNER JOIN DERSKAYITLARILOG DKL ON DK.DERSID = DKL.DERSID WHERE DAY(DKL.STARTDATE) >= DAY(CAST 'TARÝH' AS DATETIME2) OR DAY(DKL.ENDDATE) <= DAY(CAST('2016-09-26 06:23:45.8195851' AS DATETIME2))
-- Bu þekilde iliþkisel tablolar ile de sorgulama yapabiliriz. Lakin tablomuzu History tablosunun periyoduna özel bir þekilde de rahatça sorgulatabilmekteyiz.

-- == AS OF<DATETIME> ==
-- Mantýksal sorgusu : 'STARDATE >= DATETIME and ENDDATE < DATETIME' þeklindedir.
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME AS OF '2016-09-26 06:22:53.5432528' WHERE DERSID = 3

-- == FROM <START_DATETIME> TO <END_DATETIME> ==
-- Mantýksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' þeklindedir.
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME FROM '2016-09-26 06:22:53.5432528' TO '2016-09-26 06:22:53.5432528' 
WHERE DERSID = 3

-- == BETWEEN <start_datetime> AND <end_datetime> ==
-- Mantýksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' þeklindedir.

-- == CONTAINED IN(start_datetime, end_datetime) ==
-- Mantýksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' þeklindedir.