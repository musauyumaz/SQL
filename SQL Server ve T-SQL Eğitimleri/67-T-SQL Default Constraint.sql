-- DEFAULT CONSTRAINT
-- DEFAULT CONSTRAINT sayesinde kolona bir de�er girilmedi�i taktirde varsay�lan olarak ne girilmesi gerekti�ini belirtebiliyoruz.
-- Herhangi bir tablo i�erisindeki herhangi bir kolonun bo� ge�ilmesi durumunda ilgili kolona girilecek olan varsay�lan de�erin ne olmas� gerekti�ini DEFAULT CONSTRAINT sayesinde belirtebiliyoruz.

-- Genel Yap�s�;
-- ADD CONSTRAINT [CONSTRAINT ADI] DEFAULT 'VARSAYILAN DE�ER' FOR [KOLON ADI]

CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	KOLON1 NVARCHAR(MAX),
	KOLON2 INT
)
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON1CONSTRAINT DEFAULT 'BO�' FOR KOLON1

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2CONSTRAINT DEFAULT -1 FOR KOLON2

INSERT ORNEKTABLO(KOLON2) VALUES(0)
INSERT ORNEKTABLO(KOLON1) VALUES('�RNEK B�R DE�ER')

SELECT * FROM ORNEKTABLO