-- CASCADE
-- Ana tablodaki kay�t silindi�inde ya da g�ncellendi�inde ili�kili kolondaki kar��l���da otomatik olarak silinir ya da g�ncellenir.
ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE CASCADE
ON UPDATE CASCADE