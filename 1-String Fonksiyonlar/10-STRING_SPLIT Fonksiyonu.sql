-- STRING_SPLIT Fonksiyonu
-- Sonuç olarak bize scalar bir deðer deðil table türünde bir deðer döner.
-- Belli bir STRÝNG ifadenin içindeki bir ayraç karakterine göre parçalandýrýlýp tablo þeklinde dönmesini saðlayan bir fonksiyondur.
SELECT * FROM STRING_SPLIT('BTK AKADEMÝ eðitimleri ile SQL bilmeyen kalmasýn',' ')
SELECT * FROM STRING_SPLIT('Ankara,Ýstanbul,Ýzmir',',')
SELECT * FROM STRING_SPLIT('Ankara-Ýstanbul-Ýzmir','-')