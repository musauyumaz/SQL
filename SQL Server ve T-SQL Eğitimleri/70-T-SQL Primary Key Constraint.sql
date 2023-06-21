-- PRIMARY KEY CONSTRAINT
-- PRIMARY KEY Constraint ile; o kolona eklenen PRIMARY KEY ile, baþka tablolarda FOREIGN KEY oluþturarak iliþki kurmamýz mümkün olur. Bunun yanýnda o kolonun taþýdýðý verinin tekil olacaðý da garanti edilmiþ olur. PRIMARY KEY Constraint ile ayrýca CLUSTERED INDEX oluþturulmuþ da olur.

-- Genel Yapýsý
-- ADD CONSTRAINT [CONSTRAINT ADI] PRIMARY KEY [KOLON ADI]

-- DÝKKAT !!!
-- PRIMARY KEY Constraint kullanýlan kolon PRIMARY KEY özelliðine sahip olmamalýdýr.
-- Kullanacaðýmýz tablonun içerisinde ise baþka PRIMARY KEY kolonu olmamalýdýr. Çünkü bir tabloda sadece bir tane PRIMARY KEY kolon bulunabilir.

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT PRIMARYID PRIMARY KEY (ID)