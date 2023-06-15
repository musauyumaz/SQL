EXEC SPGENERATE_CUSTOMER

SELECT COUNT(*) FROM CUSTOMERS
--2519124
--2521624

--Bir index'in fragmantasyonunu düzeltmeniz için iki yöntem var : rebuild ve reorganize 
-- rebuild ile reorganize arasýndaki fark ise bunu masanýn üstünde bir daðýnýklýk var bunu düzeltmek istiyorsunuz reorganize dediðiniz þey bu iþi masanýn üstünde yapmanýz yani kaðýtlarý yere indirmeden masanýn üstünde bunlarý tekrardan toplamanýz. Ama bazen masanýn üstü o kadar daðýnýk olur ki bunu masanýn üzerinde yapma imkanýnýz yoktur yani bir þeyi tamamen silip uçurup yani masanýn üzerindeki tüm kaðýtlarý yere atýp daha sonra teker teker masanýn üstünü düzenli þekilde toplayarak yaparsýnýz. Ýþte birþeyi masanýn üstünde toparlamak iþi reorganize masanýn üstünü tamamen boþaltýp dýþarýda sýralayýpta masanýn üstüne yerleþtirmek rebuild olarak düþünebilirsiniz. 
--Yani rebuild herþeyi sil baþtan yapýyor reorganize kendi içerisinde bir sýralama gerçekleþtiriyor. fragmentation %40 altýndaysa reorganize kullanabilirsiniz fragmentation %40 üstündeyse rebuild yapýlmasý tavsiye edilir. Ama genel olarak iþi garantiye almak adýna benim tavsiyem her zaman rebuild yapabilirsiniz...

--Bir index oluþtururken ona fill factor deðerini vererek oluþturursak burada index bozulmalarýnýn önüne büyük oranda geçmiþ oluruz ve bu da bize performans olarak tekrar döner.