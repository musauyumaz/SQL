-- UNIQUE CONSTRAINT 
-- UNIQUE CONSTRAINT'in tek amac�, belirtti�imiz kolondaki de�erlerin tekil olmas�n� sa�lamaktad�r.
-- Birden fazla tekrarl� kayd�n girmesini engellemektedir.

-- Genel Yap�s�;
-- ADD CONSTRAINT [CONSTRAINT ADI] UNIQUE (KOLON ADI)

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT ORNEKTABLOUNIQUE UNIQUE (KOLON2)

-- KOLON2 kolonuna UNIQUE Constraint verilerek tekil hale getirilmi�tir. Bundan sonra iki tane ayn� veriden kay�t yap�lamamaktad�r.