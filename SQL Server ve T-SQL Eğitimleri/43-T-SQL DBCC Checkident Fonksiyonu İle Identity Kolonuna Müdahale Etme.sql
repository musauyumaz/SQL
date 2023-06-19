-- IDENTITY Kolonuna Müdahale Etme
-- Bir tabloda bulunan identity deðerinin nereden devam edeceðini ayarlayabiliyoruz.
-- Burada ilgili tabloda bulundan identity deðerlerinden büyük bir deðer girmeliyiz.

DBCC Checkident(PERSONELLERX,reseed,27)