-- == Temporal Tablolarư Listelemek
SELECT NAME,OBJECT_ID,TEMPORAL_TYPE_DESC, HISTORY_TABLE_ID, OBJECT_NAME(HISTORY_TABLE_ID) AS [HISTORY TABLO ADI] FROM SYS.TABLES WHERE OBJECT_NAME(HISTORY_TABLE_ID) IS NOT NULL

-- ya da
SELECT NAME,OBJECT_ID,TEMPORAL_TYPE_DESC, HISTORY_TABLE_ID, OBJECT_NAME(HISTORY_TABLE_ID) AS [HISTORY TABLO ADI] FROM SYS.TABLES WHERE TEMPORAL_TYPE_DESC = 'SYSTEM_VERSIONED_TEMPORAL_TABLE'
