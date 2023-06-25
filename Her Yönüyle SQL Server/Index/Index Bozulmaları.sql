-- Indexler belli zamanlarda üzerlerine yeni kayýt geldikçe bozulur ve tekrardan düzeltilmesi gerekir. Indexlerin bozulmasýna fragmantation denir.

--Index'leri belli zamanlarda bozulmalardan dolayý düzeltiriz. Bu düzeltme iþleminin adý rebuild'dir. ve genelde database bakým planlarýndan biridir. Örneðin haftada 1 ayda bir veya iþte durumunuza göre belirlersiniz. Bozulan indexler yeniden düzenlenir.

-- Index düzeltme iþlemi maliyetli bir iþlemdir ve genelde sistem kapalýyken yapýlmasý tercih edilir. Ama öyle noktalar vardýr ki bu noktalarda 7/24 sistem çalýþýr ve bu sistemleri kapatacak fýrsatýnýz olmayabilir bu durumda sizin çok sýk bozulan indexleri daha uzun sürelerde bozulur hale getirmeniz gerekir. Ýþte bunun içinde bir yöntem kullanýrýz : Bu 8KB'lýk veritabaný sayfalarýný/data page'leri full doldurmak yerine bu sayfalarda belli oranda boþluk býrakýrýz.

-- Biz bir Index'i oluþtururken ona belli bir doluluk oranýnda olmasýný söylemek istiyorsak Fill Factor'den yararlanýrýz.