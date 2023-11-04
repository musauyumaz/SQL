# Veritabanı Oluşturma ve Normalizasyon
## Alıştırma 1
- Test isimli bir veritabanı oluşturunuz. (Daha önce oluşturduysanız veritabanı silip yeniden oluşturunuz)
- Bu veritabanının içine USERS isimli bir tablo oluşturunuz.
- Bu tabloya 
  * ID:1
  * USERNAME:muyumaz 
  * NAMESURNAME: MUSA UYUMAZ
  * CITY:ESKİŞEHİR
  * TOWN:SİVRİHİSAR
  * BIRTHDATE:14.02.1999
- olacak şekilde kayıt giriniz.

```SQL
CREATE DATABASE Test;
USE Test;
CREATE TABLE USERS(
ID INT PRIMARY KEY,
USERNAME VARCHAR(15),
NAMESURNAME VARCHAR(15),
CITY VARCHAR(15),
TOWN VARCHAR(15),
BIRTHDATE DATE);

INSERT INTO USERS(ID,USERNAME,NAMESURNAME,CITY, TOWN,BIRTHDATE) VALUES(1,'muyumaz','MUSA UYUMAZ','ESKİŞEHİR','SİVRİHİSAR','1999-02-14');
```

## Alıştırma 2
- Az önceki tabloya 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.

## Alıştırma 3
- Bir önceki örnekte kullandığınız USERS tablosunun NAMESURNAME alan uzunluğunu 50 olarak güncelleyiniz ve içine tekrardan aşağıdaki değerleri girmeyi deneyiniz.
- 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.
## Alıştırma 4
- USERS tablosundaki ID alanını otomatik artan olarak değiştiriniz 
- 
  * ID:1
  * USERNAME:ocolokoglu 
  * NAMESURNAME: Ömer Faruk ÇOLAKOĞLU
  * CITY:İstanbul
  * TOWN:Kadıköy
  * BIRTHDATE:01.01.1990
- olacak şekilde kayıt giriniz.
## Alıştırma 5
- TEST veritabanı içine SENTENCES isimli bir tablo oluşturunuz. 
- SQL dili veri ile konuşmanın alfabesidir. cümleisini Google translate kullanarak Çince'ye çeviriniz. ve elde ettiğiniz çeviri cümlesini SENTENCES tablosuna SENTENCE1, SENTENCE2, SENTENCE3, SENTENCE4 alanlarına yapıştırınız sonuçları inceleyiniz.

|SENTENCES|SENTENCES|
|---------|---------|
|ID:|INT IDENTITY(1,1)|
|SENTENCE1:|CHAR(200)|
|SENTENCE2:|VARCHAR(200)|
|SENTENCE3:|NCHAR(200)|
|SENTENCE4:|NVARCHAR(200)|

## Alıştırma 6
|USERS1|USERS1|
|---------|---------|
|NAMESURNAME:|NCHAR(4000)|

|USERS2|USERS2|
|---------|---------|
|NAMESURNAME:|NVARCHAR(4000)|
- TEST veritabanı içine USERS1 isimli bir tablo oluşturunuz.
- TEST veritabanı içine USERS2 isimli bir tablo oluşturunuz.
- Aşağıdaki SQL scripti ile sırası ile USERS1 ve USERS2 tablolarına 100000 satır kayıt ekleyiniz.
```SQL
 INSERT INTO USERS1("NAMESURNAME") VALUES("ÖMER ÇOlAKOĞLU")
 GO 10000
```
```SQL
 INSERT INTO USERS2("NAMESURNAME") VALUES("ÖMER ÇOlAKOĞLU")
 GO 10000
```
```SQL
EXEC SP_SpaceUsed USERS1
EXEC SP_SpaceUsed USERS2
```
komutları ile iki tablonun boyutunu karşılaştırınız.

# SQL Dili
## Alıştırma 1
- CRM isimli yeni bir veritaban oluşturunuz, var ise siliniz.
- Bu veritabanının içie CUSTOMERS isimli bir tablo oluşturunuz.
- Bu tabloya Customers.xslx dosyasındaki kayıtları kopyalayarak ekleyiniz.
|CUSTOMERS||
|---------|---------|
|ID:|INT IDENTITY(1,1)|
|NAMESURNAME:|VARCHAR(50)|
|GENDER:|VARCHAR(1)|
|BIRTHDATE:|DATE|
|CITY:|VARCHAR(50)|
|TOWN:|VARCHAR(50)|
|TELNR:|VARCHAR(15)|
|TCNUMBER:|VARCHAR(11)|

## Alıştırma 2
- Bir önceki alıştırmada CRM veritabanına eklediğiniz kayıtları,
- SELECT cümlesi ile tüm kolonları gelecek şekilde çekiniz.
- SELECT cümlesi ile sadece NAMESURNAME, GENDER, BIRTHDATE alanları gelecek şekilde çekiniz.
- SELECT cümlesi ile ID hariç tüm alanlar gelecek şekilde çekiniz.
## Alıştırma 3
- SELECT cümlesi ile CUSTOMERS tablosundan veri çekiniz.
- CUSTOMERS tablosunun içini truncate ile boşaltınız.
- SELECT cümlesi ile tablonun içini kontrol ediniz
- INSERT cümlesi ile tabloya 1 satır yeni kayıt ekleyiniz.

|CUSTOMERS||
|---------|---------|
|ID:|1|
|NAMESURNAME:|CEM ARSLAN|
|GENDER:|E|
|BIRTHDATE:|1967-01-25|
|CITY:|AYDIN|
|TOWN:|ÇİNE|
|TELNR:|XXX63312XXX|
|TCNUMBER:|XX0024783XX|

## Alıştırma 4
- CUSTOMERS tablosunu truncate ediniz.
- customers.xlsx dosyasındaki tüm satırlar için excel formülü kullanaark bir script oluşturunuz ve bu scripti kullanarak veritabanına tüm kayıtları insert ediniz.

## Alıştırma 5
- CUSTOMERS tablosuna GSMOPERATOR isimli bir alan ekleyiniz(VARCHAR(15))
- Bu alanı 'Turkcell' olarak güncelleyiniz.

## Alıştırma 6
- CUSTOMERS tablosuna AGE isimli bir alan ekleyiniz.(INT)
- Bu alan doğum tarihine göre hesaplayarak güncelleyiniz.

## Alıştırma 7
- CUSTOMERS tablosunda NAMESURNAME alanındaki Allow Null özelliğini kaldırınız.
- Customers tablosuna NAMESURNAME alanı olmayacak şekilde insert cümlesi gönderiniz.
- Customers tablosuna TELNR ve TCNO alanları olmayacak şekilde insert cümlesi gönderiniz.

## Alıştırma 8
- CUSTOMERS tablosunu truncate ediniz.
- Excel'de oluşturduğunuz INSERT scriptini kopyalayarak SSMS üzerinde çalıştırınız. 
- ID alanını kontrol ediniz.
- DELETE FROM CUSTOMERS diyerek tablodaki tüm verileri siliniz.
- Excel'de oluşturduğunuz INSERT scriptini kopyalayarak SSMS üzerinde çalıştırınız.
- ID alanını kontrol ediniz.