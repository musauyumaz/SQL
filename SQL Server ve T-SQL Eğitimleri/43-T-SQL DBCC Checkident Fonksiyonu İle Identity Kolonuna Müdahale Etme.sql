-- IDENTITY Kolonuna M�dahale Etme
-- Bir tabloda bulunan identity de�erinin nereden devam edece�ini ayarlayabiliyoruz.
-- Burada ilgili tabloda bulundan identity de�erlerinden b�y�k bir de�er girmeliyiz.

DBCC Checkident(PERSONELLERX,reseed,27)