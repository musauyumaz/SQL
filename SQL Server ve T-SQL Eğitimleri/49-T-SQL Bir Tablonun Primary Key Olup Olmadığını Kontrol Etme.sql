-- Bir Tablonun Primary Key Olup Olmadýðýný Kontrol Etme
-- Eðer ki 1 deðerini döndürüyorsa ilgili tablo içinde primary key var olduðunu göstermektedir. Yok eðer 0 gösteriyorsa demek ki ilgili tablo içinde herhangi bir primary key yok demektir.

SELECT OBJECTPROPERTY(OBJECT_ID('PERSONELLER'),'TABLEHASPRIMARYKEY')