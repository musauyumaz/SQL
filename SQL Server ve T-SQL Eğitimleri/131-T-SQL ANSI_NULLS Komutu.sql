-- T-SQL ANSI_NULLS Komutu

-- SET ANSI_NULLS [ON | OFF]

-- ANSI_NULLS komutu, WHERE �artlar�nda kontrol edilen e�itlik yahut e�it de�illik durumlar�nda NULL de�erlerin dikkate al�n�p al�nmayaca��n� belirlememizi sa�layan bir �zelliktir.
-- 'ON' de�eri verilirse NULL de�erler dikkate al�nmaz.
-- 'OFF' de�eri verilirse NULL de�erler dikkate al�n�r.

SET ANSI_NULLS ON

SELECT * FROM PersonelMaas WHERE Maas = NULL

SET ANSI_NULLS OFF
