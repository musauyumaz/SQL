TRUNCATE TABLE WORKERTRANSACTIONS

SELECT * FROM WORKERTRANSACTIONS
SELECT * FROM WORKERS


--EXEC SP_WORKER_INOUT '9807BCEA-F5BC-4D93-B17A-72819E17CD7B','2020-04-12 08:10:00','G',1

EXEC SP_WORKER_INOUT @DATE='2023-06-07 17:36:48',@WORKERBARCODE='9807BCEA-F5BC-4D93-B17A-72819E17CD7B',@IOTYPE='C',@GATEID=7