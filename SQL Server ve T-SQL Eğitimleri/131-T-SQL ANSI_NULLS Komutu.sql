-- T-SQL ANSI_NULLS Komutu

-- SET ANSI_NULLS [ON | OFF]

-- ANSI_NULLS komutu, WHERE þartlarýnda kontrol edilen eþitlik yahut eþit deðillik durumlarýnda NULL deðerlerin dikkate alýnýp alýnmayacaðýný belirlememizi saðlayan bir özelliktir.
-- 'ON' deðeri verilirse NULL deðerler dikkate alýnmaz.
-- 'OFF' deðeri verilirse NULL deðerler dikkate alýnýr.

SET ANSI_NULLS ON

SELECT * FROM PersonelMaas WHERE Maas = NULL

SET ANSI_NULLS OFF
