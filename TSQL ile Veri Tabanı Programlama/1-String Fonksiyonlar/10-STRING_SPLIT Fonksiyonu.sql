-- STRING_SPLIT Fonksiyonu
-- Sonu� olarak bize scalar bir de�er de�il table t�r�nde bir de�er d�ner.
-- Belli bir STR�NG ifadenin i�indeki bir ayra� karakterine g�re par�aland�r�l�p tablo �eklinde d�nmesini sa�layan bir fonksiyondur.
SELECT * FROM STRING_SPLIT('BTK AKADEM� e�itimleri ile SQL bilmeyen kalmas�n',' ')
SELECT * FROM STRING_SPLIT('Ankara,�stanbul,�zmir',',')
SELECT * FROM STRING_SPLIT('Ankara-�stanbul-�zmir','-')