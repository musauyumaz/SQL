-- 6- Matematik Fonksiyonları Alıştırma 3
-- Elimizde satışların olduğu bir market database'i var. Burada kategori bazlı toplam satış cirosunu bulurken ondalık rakamlardan kurtulmak istiyoruz. FLOOR, CEILING, ROUND ve CONVERT(INT) fonksiyonlarını kullanarak elde ettiğiniz verileri karşılaştırınız.
-- Kaynak Tablo: LAB03
SELECT CATEGORY1+'>'+CATEGORY2+'>'+CATEGORY3+'>'+CATEGORY4+'>' CATEGORY,SUM(TOTALPRICE) TOTALSALE,FLOOR(SUM(TOTALPRICE)) TOTALSALE_FLOOR,CEILING(SUM(TOTALPRICE)) TOTALSALE_CEILING,ROUND(SUM(TOTALPRICE),0) TOTALSALE_ROUND,CONVERT(INT,SUM(TOTALPRICE)) TOTALSALE_INT FROM LAB03
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4