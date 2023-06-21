-- CHECK CONSTRAINT
-- Bir kolona girilecek olan verinin belirli bir �arta uymas�n� zorunlu tutar.
-- Herhangi bir kolona girilecek olan verinin �nceden belirtti�im bir �arta g�re CHECK/kontrol edilip CHECK sonucunda olumlu ya da olumsuz olma durumuna g�re ilgili kolona ilgili verinin kaydedilmesini inceleyen constraint'tir.

-- Genel Yap�s�;
-- ADD CONSTRAINT [CONSTRAINT ADI] CHECK (�ART)

ALTER TABLE ORNEKTABLO
ADD CONSTRAINT KOLON2KONTROL CHECK ((KOLON2 * 5) % 2 = 0)

