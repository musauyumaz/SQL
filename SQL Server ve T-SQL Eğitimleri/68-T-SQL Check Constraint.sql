-- CHECK CONSTRAINT
-- Bir kolona girilecek olan verinin belirli bir þarta uymasýný zorunlu tutar.
-- Herhangi bir kolona girilecek olan verinin önceden belirttiðim bir þarta göre CHECK/kontrol edilip CHECK sonucunda olumlu ya da olumsuz olma durumuna göre ilgili kolona ilgili verinin kaydedilmesini inceleyen constraint'tir.

-- Genel Yapýsý;
-- ADD CONSTRAINT [CONSTRAINT ADI] CHECK (ÞART)

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2KONTROL CHECK ((KOLON2 * 5) % 2 = 0)

