-- CASCADE
-- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde ilişkili kolondaki karşılığıda otomatik olarak silinir ya da güncellenir.
ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE CASCADE
ON UPDATE CASCADE