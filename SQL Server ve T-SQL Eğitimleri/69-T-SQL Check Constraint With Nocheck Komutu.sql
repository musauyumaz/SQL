-- D�KKAT!!!
-- CHECK constraint olu�turulmadan �nce ilgili tabloda �arta ayk�r� de�erler varsa e�er constraint olu�turulmayacakt�r! ! !
-- Ancak �nceki kay�tlar� g�rmezden gelip yinede CHECK constrainti uygulamak istiyorsak WITH NOCHECK komutu kullan�lmal�d�r.

-- WITH NOCHECK Komutu
-- �u ana kadar kay�tlar� g�rmezden gelip, CHECK constrainti uygulatt�r�r.
ALTER TABLE ORNEKTABLO
WITH NOCHECK ADD CONSTRAINT KOLON2KONTROL CHECK((KOLON2 * 5) % 2 = 0)