INSERT INTO WORKERS
([WORKERCODE], [WORKERNAME], [GENDER], [BIRTHDATE], [TCNO], [WORKERBARCODE]) 
VALUES('12345678901','MUSA UYUMAZ','E','19990214','12345678901',NEWID())

SELECT * FROM WORKERS

INSERT INTO WORKERTRANSACTIONS([WORKERID], [DATE_], [IOTYPE], [GATEID])
VALUES (1,'2020-04-12 17:32:28','C',6)

SELECT * FROM WORKERTRANSACTIONS