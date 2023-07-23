-- 4-Log Trigger-1
CREATE TABLE [dbo].[ITEMS](
	[ID] [int] ,
	[ITEMCODE] [varchar](50) ,
	[ITEMNAME] [varchar](100) ,
	[UNITPRICE] [float] ,
	[CATEGORY1] [varchar](50) ,
	[CATEGORY2] [varchar](50) ,
	[CATEGORY3] [varchar](50) ,
	[CATEGORY4] [varchar](50) ,
	[BRAND] [varchar](50) ,
	LOG_ACTÝONTYPE VARCHAR(10),
	LOG_DATE DATETIME,
	LOG_HOSTNAME VARCHAR(100),
	LOG_PROGRAMNAME VARCHAR(100),
	LOG_USERNAME VARCHAR(100)
)
