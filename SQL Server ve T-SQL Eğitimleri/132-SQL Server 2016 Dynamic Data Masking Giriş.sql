-- Dynamic Data Masking
-- Dinamik veri maskeleme sistemidir.
-- Veritabanında ilişkisel tablolarımızda tuttuğumuz verilerimizi tararken gösterilmesi istenen veriler dışındaki verileri maskeleme özelliğidir.
-- Verinin orjinal halini yani fiziksel yapısını değiştirmeden kullanıcıya bir kısmını göstermek yahut gizlemektir.
-- Bir alışveriş sitesinde kayıtlı kullanıcının her bilgisine örneğin tc kimlik numarasına, kredi kartı numarasına, telefon numarasına, ev adresine bunun gibi kritik bilgilere biz kritik görevler dışındakilerin personellerin ulaşmasını istemeyiz.
-- Bir nevi güvenlik önlemi olsada amaca dönük sorguların gerçekleştirilmesini sağlamaktır.
-- Dynamic Data Masking default, email ve partial olmak üzere 3 adet fonksiyonel parametre ile çalışmaktadır.