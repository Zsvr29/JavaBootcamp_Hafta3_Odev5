Select ContactName Adi,CompanyName SirketAdi,City Sehir From Customers
Select * From Customers where city='London'
Select * From Products where CategoryID=1 or CategoryID=3
Select * From Products where CategoryID=1 And  UnitPrice>=10
select * from Products order by ProductName  -- isme gore s�rala
select * from Products order by CategoryID,ProductName
select* from Products order by UnitPrice  asc -- fiyat� em-n azdan en coga dogru s�ralad�. asc artan demek.
select * from Products where CategoryID=1 order by UnitPrice desc -- dusen 
select COUNT(*) from Products   -- T�m sat�rlar� say.
select COUNT(*) from Products where CategoryID=2
select CategoryID, Count(*)  from Products where UnitPrice>20  group by CategoryID having COUNT(*) <10  --gruplama // kumulat�f 

--�nner Joinler birle�tirme.
--select * from Products inner join Categories  -- hem products hemde kategor�ler�n b�r araya get�r�lm�s sekl�.
select * from Products inner join Categories on.Products.CategoryID=Categories.CategoryID  --kategor�ler�n b�r araya get�r�lmes� anlam�na gel�yor. on sart anlam�nda 
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on.Products.CategoryID=Categories.CategoryID where UnitPrice>10
--Product tablosundan 3 alan� kategor�den 2 alan� get�rmek �st�yorum. F�yat� 10 dan buyuk olan urunler�  kategor� ad� ile get�recek.

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID
-- Inner jo�n sadece eslesen kay�tlar� get�r�r.

select * from Products p left join [Order Details] od on p.ProductID=od.ProductID  inner join Orders o  on o.OrderID=od.OrderID  -- yaz�ma gore  solda olup sagda olmayanlar� da  get�r.

 select* from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null       --m�ster�lerde olup sipars�lerde olmayanlar� da get�r. null demek o data yok demek. primary key uygular�z.
 









