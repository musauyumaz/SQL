-- == STORED PROCEDURE İçerisinde Nesne Oluşturma ==
CREATE PROC SP_TABLOOLUSTUR
(
	@TABLOADI NVARCHAR(MAX),
	@KOLON1ADI NVARCHAR(MAX),
	@KOLON1OZELLIKLERI NVARCHAR(MAX),
	@KOLON2ADI NVARCHAR(MAX),
	@KOLON2OZELLIKLERI NVARCHAR(MAX)
)AS
EXEC
('
CREATE TABLE '+ @TABLOADI + '
(
	' + @KOLON1ADI + ' ' + @KOLON1OZELLIKLERI + ',
	' + @KOLON2ADI + ' ' + @KOLON2OZELLIKLERI + ',
)
')

EXEC SP_TABLOOLUSTUR 'ORNEKTABLO3','ID','INT PRIMARY KEY IDENTITY(1,1)', 'KOLON2','NVARCHAR(MAX)'