--SQL Server Profiler : SQL Server içerisinde anlýk olarak çalýþan SQL/TSQL cümlelerini bize gösteren araç.

--SQL Server özünde SQL dilinden baþka biþey anlamaz. Geri planda gelen giden herþey SQL cümlesidir ya da bir TSQL cümlesidir SQL Server için.

--USE CRM

--SELECT * FROM CUSTOMERS

USE HR
SELECT *,
(SELECT TOP 1 IOTYPE FROM WORKERTRANSACTIONS WHERE WORKERID=W.ID ORDER BY DATE_ DESC) AS LASTIOTYPE
FROM WORKERS W
