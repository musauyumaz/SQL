-- Bir Tablonun Primary Key Olup Olmad���n� Kontrol Etme
-- E�er ki 1 de�erini d�nd�r�yorsa ilgili tablo i�inde primary key var oldu�unu g�stermektedir. Yok e�er 0 g�steriyorsa demek ki ilgili tablo i�inde herhangi bir primary key yok demektir.

SELECT OBJECTPROPERTY(OBJECT_ID('PERSONELLER'),'TABLEHASPRIMARYKEY')