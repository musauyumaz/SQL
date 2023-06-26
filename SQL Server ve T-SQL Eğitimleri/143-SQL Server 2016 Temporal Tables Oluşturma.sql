-- == Temporal Tables Olu�turma ==
CREATE TABLE DERSKAYITLARI
(
	---------- 1. KISIM ----------
	DERSID INT PRIMARY KEY IDENTITY(1,1),
	DERS NVARCHAR(MAX),
	ONAY BIT,
	---------- 1. KISIM ----------

	---------- 2. KISIM ----------
	STARTDATE DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
	ENDDATE DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
	---------- 2. KISIM ----------

	---------- 3. KISIM ----------
	PERIOD FOR SYSTEM_TIME(STARTDATE,ENDDATE)
	---------- 3. KISIM ----------
)
	---------- 4. KISIM ----------
	WITH(SYSTEM_VERSIONING = ON(HISTORY_TABLE = DBO.DERSKAYITLARILOG)) -- E�er HISTORY_TABLE �zelli�i ile History tablosuna isim vermezsek rastgele isimde olu�turulur.
	---------- 4. KISIM ----------
