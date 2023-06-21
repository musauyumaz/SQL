-- SET DEFAULT
-- Ana tablodaki kay�t silindi�inde ya da g�ncellendi�inde ili�kili kolondaki kar��l���na o kolonun default de�eri bas�l�r. Bu default de�er dedi�imiz default tipte bir constraint'tir. Bunu kendimiz olu�turabiliriz.

ALTER TABLE OGRENCILER
ADD CONSTRAINT DEFAULTOGRENCILER DEFAULT -1 FOR DERSID

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE SET DEFAULT
ON UPDATE SET DEFAULT

-- Bu ayarlar verilmedi�i taktirde NO ACTION �zelli�i ge�erlidir.
