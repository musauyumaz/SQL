--SQL Server Profiler : SQL Server i�erisinde anl�k olarak �al��an SQL/TSQL c�mlelerini bize g�steren ara�.

--SQL Server �z�nde SQL dilinden ba�ka bi�ey anlamaz. Geri planda gelen giden her�ey SQL c�mlesidir ya da bir TSQL c�mlesidir SQL Server i�in.

--USE CRM

--SELECT * FROM CUSTOMERS

USE HR
SELECT *,
(SELECT TOP 1 IOTYPE FROM WORKERTRANSACTIONS WHERE WORKERID=W.ID ORDER BY DATE_ DESC) AS LASTIOTYPE
FROM WORKERS W
