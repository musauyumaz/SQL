-- DEFAULT CONSTRAINT
-- DEFAULT CONSTRAINT sayesinde kolona bir deðer girilmediði taktirde varsayýlan olarak ne girilmesi gerektiðini belirtebiliyoruz.
-- Herhangi bir tablo içerisindeki herhangi bir kolonun boþ geçilmesi durumunda ilgili kolona girilecek olan varsayýlan deðerin ne olmasý gerektiðini DEFAULT CONSTRAINT sayesinde belirtebiliyoruz.

-- Genel Yapýsý;
-- ADD CONSTRAINT [CONSTRAINT ADI] DEFAULT 'VARSAYILAN DEÐER' FOR [KOLON ADI]

CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	KOLON1 NVARCHAR(MAX),
	KOLON2 INT
)
ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON1CONSTRAINT DEFAULT 'BOÞ' FOR KOLON1

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2CONSTRAINT DEFAULT -1 FOR KOLON2

INSERT ORNEKTABLO(KOLON2) VALUES(0)
INSERT ORNEKTABLO(KOLON1) VALUES('ÖRNEK BÝR DEÐER')

SELECT * FROM ORNEKTABLO