EXEC msdb.dbo.sp_send_dbmail
	@profile_name='SQLMAIL',
	@recipients='ecoffeecompanyinfo@gmail.com',
	@body='BACKUP TEST DATABASE I DIFFERANTIAL YEDEGI BASARI ILE ALINDI',
	@subject='YEDEK BASARI ILE ALINDI',
	@query='SELECT TOP 10 * FROM CRM2.DBO.CUSTOMERS',
	@attach_query_result_as_file=1;


EXEC msdb.dbo.sp_send_dbmail
	@profile_name='SQLMAIL',
	@recipients='ecoffeecompanyinfo@gmail.com',
	@body='BACKUP TEST DATABASE I DIFFERANTIAL YEDEGI BASARI ILE ALINDI',
	@subject='YEDEK BASARI ILE ALINDI';

EXEC msdb.dbo.sp_send_dbmail
	@profile_name='SQLMAIL',
	@recipients='ecoffeecompanyinfo@gmail.com',
	@body='BACKUP TEST DATABASE I DIFFERANTIAL YEDEK ALINIRKEN BIR HATA OLUSTU',
	@subject='YEDEK ALINAMADI';