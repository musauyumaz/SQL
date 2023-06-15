EXEC SPGENERATE_CUSTOMER

SELECT COUNT(*) FROM CUSTOMERS
--2519124
--2521624

--Bir index'in fragmantasyonunu d�zeltmeniz i�in iki y�ntem var : rebuild ve reorganize 
-- rebuild ile reorganize aras�ndaki fark ise bunu masan�n �st�nde bir da��n�kl�k var bunu d�zeltmek istiyorsunuz reorganize dedi�iniz �ey bu i�i masan�n �st�nde yapman�z yani ka��tlar� yere indirmeden masan�n �st�nde bunlar� tekrardan toplaman�z. Ama bazen masan�n �st� o kadar da��n�k olur ki bunu masan�n �zerinde yapma imkan�n�z yoktur yani bir �eyi tamamen silip u�urup yani masan�n �zerindeki t�m ka��tlar� yere at�p daha sonra teker teker masan�n �st�n� d�zenli �ekilde toplayarak yapars�n�z. ��te bir�eyi masan�n �st�nde toparlamak i�i reorganize masan�n �st�n� tamamen bo�alt�p d��ar�da s�ralay�pta masan�n �st�ne yerle�tirmek rebuild olarak d���nebilirsiniz. 
--Yani rebuild her�eyi sil ba�tan yap�yor reorganize kendi i�erisinde bir s�ralama ger�ekle�tiriyor. fragmentation %40 alt�ndaysa reorganize kullanabilirsiniz fragmentation %40 �st�ndeyse rebuild yap�lmas� tavsiye edilir. Ama genel olarak i�i garantiye almak ad�na benim tavsiyem her zaman rebuild yapabilirsiniz...

--Bir index olu�tururken ona fill factor de�erini vererek olu�turursak burada index bozulmalar�n�n �n�ne b�y�k oranda ge�mi� oluruz ve bu da bize performans olarak tekrar d�ner.