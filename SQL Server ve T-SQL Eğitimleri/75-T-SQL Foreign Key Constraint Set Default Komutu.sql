-- SET DEFAULT
-- Ana tablodaki kayıt silindiğinde ya da güncellendiğinde ilişkili kolondaki karşılığına o kolonun default değeri basılır. Bu default değer dediğimiz default tipte bir constraint'tir. Bunu kendimiz oluşturabiliriz.

ALTER TABLE OGRENCILER
ADD CONSTRAINT DEFAULTOGRENCILER DEFAULT -1 FOR DERSID

ALTER TABLE OGRENCILER
ADD CONSTRAINT FOREIGNKEYOGRENCIDERS FOREIGN KEY (DERSID) REFERENCES DERSLER(DERSID)
ON DELETE SET DEFAULT
ON UPDATE SET DEFAULT

-- Bu ayarlar verilmediği taktirde NO ACTION özelliği geçerlidir.
