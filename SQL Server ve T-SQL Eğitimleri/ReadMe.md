***
## 1-) T-SQL SQL Server Giriş, Veritabanı Oluşturma ve Tablo Oluşturma
- SQL Server adı üstünde bir server'dır. Access gibi sadece bir veri tutan yapı değildir. Server olduğundan dolayı üzerinde birden fazla yapı çalışmaktadır. Bunlardan bir tanesi de database dediğimiz veritabanıdır.

***
## 2-) T-SQL Northwind Veritabanını İndirme ve Yükleme
[NORTHWIND TURKCE]("")

***
## 3-) T-SQL Özellikleri ve Use Komutu
- Transact SQL(T-SQL) Dili Ozellikleri

- Yorum Satiri -- ifadesidir.

- T-SQL ile veri cekme, kaydetme, guncelleme, ve silme gibi islemlerle veritabanina mudahale edebilir, database olusturma - silme, tablo olusturma - silme islemlerinin gerceklestirebilir ve diger veritabani yapilari ve programatik islemlerde kullanacagimiz veritabani programlama araclarını olusturabiliriz.

- T-SQL buyuk kucuk harf duyarliligina sahip bir dil degildir.
--MUSA = Musa = MuSa 

- T-SQL programlama dili bizim icin veritabanina belirli bir yaklasim sergilememizi saglayan gramersel bir dildir.

- T-SQL komutları ne yazarsak yazalım belirli bir veritabani uzerinde calisacaktir ve T-SQL komutlarini calistiracagimiz veritabanini bir yerde belirlememiz gerekir. Neden? Server'da birden fazla veritabani bulunabiliyor. Haliyle burada yazdigim TSQL komutlarinin hangi veritabaninda calisacagina belirlemem gerekmektedir.

- Komutlarla veritabanını secmek icin `USE` komutunu kullanırız. 

```SQL
USE Northwind
```