-- CASCADE
-- Ana tablodaki kayýt silindiðinde ya da güncellendiðinde iliþkili kolondaki karþýlýðýda otomatik olarak silinir ya da güncellenir.
ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE CASCADE
ON UPDATE CASCADE