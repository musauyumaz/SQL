-- UNIQUE CONSTRAINT 
-- UNIQUE CONSTRAINT'in tek amacý, belirttiðimiz kolondaki deðerlerin tekil olmasýný saðlamaktadýr.
-- Birden fazla tekrarlý kaydýn girmesini engellemektedir.

-- Genel Yapýsý;
-- ADD CONSTRAINT [CONSTRAINT ADI] UNIQUE (KOLON ADI)

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT ORNEKTABLOUNIQUE UNIQUE (KOLON2)

-- KOLON2 kolonuna UNIQUE Constraint verilerek tekil hale getirilmiþtir. Bundan sonra iki tane ayný veriden kayýt yapýlamamaktadýr.