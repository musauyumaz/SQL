-- Indexler belli zamanlarda �zerlerine yeni kay�t geldik�e bozulur ve tekrardan d�zeltilmesi gerekir. Indexlerin bozulmas�na fragmantation denir.

--Index'leri belli zamanlarda bozulmalardan dolay� d�zeltiriz. Bu d�zeltme i�leminin ad� rebuild'dir. ve genelde database bak�m planlar�ndan biridir. �rne�in haftada 1 ayda bir veya i�te durumunuza g�re belirlersiniz. Bozulan indexler yeniden d�zenlenir.

-- Index d�zeltme i�lemi maliyetli bir i�lemdir ve genelde sistem kapal�yken yap�lmas� tercih edilir. Ama �yle noktalar vard�r ki bu noktalarda 7/24 sistem �al���r ve bu sistemleri kapatacak f�rsat�n�z olmayabilir bu durumda sizin �ok s�k bozulan indexleri daha uzun s�relerde bozulur hale getirmeniz gerekir. ��te bunun i�inde bir y�ntem kullan�r�z : Bu 8KB'l�k veritaban� sayfalar�n�/data page'leri full doldurmak yerine bu sayfalarda belli oranda bo�luk b�rak�r�z.

-- Biz bir Index'i olu�tururken ona belli bir doluluk oran�nda olmas�n� s�ylemek istiyorsak Fill Factor'den yararlan�r�z.