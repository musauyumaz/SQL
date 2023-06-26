-- == History Tablosuna �zel Temporal Tabloyu Sorgulama ==
-- SELECT * FROM DERSKAYITLARI DK INNER JOIN DERSKAYITLARILOG DKL ON DK.DERSID = DKL.DERSID WHERE DAY(DKL.STARTDATE) >= DAY(CAST 'TAR�H' AS DATETIME2) OR DAY(DKL.ENDDATE) <= DAY(CAST('2016-09-26 06:23:45.8195851' AS DATETIME2))
-- Bu �ekilde ili�kisel tablolar ile de sorgulama yapabiliriz. Lakin tablomuzu History tablosunun periyoduna �zel bir �ekilde de rahat�a sorgulatabilmekteyiz.

-- == AS OF<DATETIME> ==
-- Mant�ksal sorgusu : 'STARDATE >= DATETIME and ENDDATE < DATETIME' �eklindedir.
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME AS OF '2016-09-26 06:22:53.5432528' WHERE DERSID = 3

-- == FROM <START_DATETIME> TO <END_DATETIME> ==
-- Mant�ksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' �eklindedir.
SELECT * FROM DERSKAYITLARI
FOR SYSTEM_TIME FROM '2016-09-26 06:22:53.5432528' TO '2016-09-26 06:22:53.5432528' 
WHERE DERSID = 3

-- == BETWEEN <start_datetime> AND <end_datetime> ==
-- Mant�ksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' �eklindedir.

-- == CONTAINED IN(start_datetime, end_datetime) ==
-- Mant�ksal sorgusu : 'start_datetime >= datetime and end_datetime < datetime' �eklindedir.