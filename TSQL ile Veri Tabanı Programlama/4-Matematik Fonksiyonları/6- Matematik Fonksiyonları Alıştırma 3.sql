-- 6- Matematik Fonksiyonlar� Al��t�rma 3
-- Elimizde sat��lar�n oldu�u bir market database'i var. Burada kategori bazl� toplam sat�� cirosunu bulurken ondal�k rakamlardan kurtulmak istiyoruz. FLOOR, CEILING, ROUND ve CONVERT(INT) fonksiyonlar�n� kullanarak elde etti�iniz verileri kar��la�t�r�n�z.
-- Kaynak Tablo: LAB03
SELECT CATEGORY1+'>'+CATEGORY2+'>'+CATEGORY3+'>'+CATEGORY4+'>' CATEGORY,SUM(TOTALPRICE) TOTALSALE,FLOOR(SUM(TOTALPRICE)) TOTALSALE_FLOOR,CEILING(SUM(TOTALPRICE)) TOTALSALE_CEILING,ROUND(SUM(TOTALPRICE),0) TOTALSALE_ROUND,CONVERT(INT,SUM(TOTALPRICE)) TOTALSALE_INT FROM LAB03
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4