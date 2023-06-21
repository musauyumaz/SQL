-- SET DEFAULT
-- Ana tablodaki kayýt silindiðinde ya da güncellendiðinde iliþkili kolondaki karþýlýðýna o kolonun default deðeri basýlýr. Bu default deðer dediðimiz default tipte bir constraint'tir. Bunu kendimiz oluþturabiliriz.

ALTER TABLE OGRENCILER
ADD CONSTRAINT DEFAULTOGRENCILER DEFAULT -1 FOR DERSID

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE SET DEFAULT
ON UPDATE SET DEFAULT

-- Bu ayarlar verilmediði taktirde NO ACTION özelliði geçerlidir.
