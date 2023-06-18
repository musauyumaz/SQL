-- CROSS JOIN 
-- �ki tablo aras�nda kartezyen �arp�m� yapar. Kartezyen �arp�m�yla birle�tirir. �ki k�me aras�nda elemanlar� tek tek birbirleriyle e�le�tirme i�lemine kartezyen i�lemi deriz.
-- CROSS JOIN kullanarak iki tabloyu birle�tirirsek e�er elde edilen sonu� iki tablonun eleman say�lar�n�n �arp�mlar� kadard�r.
-- WHERE ile �art uygulayamay�z.

SELECT COUNT(*) FROM Personeller
SELECT COUNT(*) FROM Bolge

SELECT P.Adi,B.BolgeID FROM Personeller P CROSS JOIN BOLGE B