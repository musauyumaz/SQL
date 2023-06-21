-- PRIMARY KEY CONSTRAINT
-- PRIMARY KEY Constraint ile; o kolona eklenen PRIMARY KEY ile, ba�ka tablolarda FOREIGN KEY olu�turarak ili�ki kurmam�z m�mk�n olur. Bunun yan�nda o kolonun ta��d��� verinin tekil olaca�� da garanti edilmi� olur. PRIMARY KEY Constraint ile ayr�ca CLUSTERED INDEX olu�turulmu� da olur.

-- Genel Yap�s�
-- ADD CONSTRAINT [CONSTRAINT ADI] PRIMARY KEY [KOLON ADI]

-- D�KKAT !!!
-- PRIMARY KEY Constraint kullan�lan kolon PRIMARY KEY �zelli�ine sahip olmamal�d�r.
-- Kullanaca��m�z tablonun i�erisinde ise ba�ka PRIMARY KEY kolonu olmamal�d�r. ��nk� bir tabloda sadece bir tane PRIMARY KEY kolon bulunabilir.

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT PRIMARYID PRIMARY KEY (ID)