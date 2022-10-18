Select ContactName Adi,CompanyName SirketAdi,City Sehir From Customers
Select * From Customers where city='London'
Select * From Products where CategoryID=1 or CategoryID=3
Select * From Products where CategoryID=1 And  UnitPrice>=10
select * from Products order by ProductName  -- isme gore sýrala
select * from Products order by CategoryID,ProductName
select* from Products order by UnitPrice  asc -- fiyatý em-n azdan en coga dogru sýraladý. asc artan demek.
select * from Products where CategoryID=1 order by UnitPrice desc -- dusen 
select COUNT(*) from Products   -- Tüm satýrlarý say.
select COUNT(*) from Products where CategoryID=2
select CategoryID, Count(*)  from Products where UnitPrice>20  group by CategoryID having COUNT(*) <10  --gruplama // kumulatýf 

--Ýnner Joinler birleþtirme.
--select * from Products inner join Categories  -- hem products hemde kategorýlerýn býr araya getýrýlmýs seklý.
select * from Products inner join Categories on.Products.CategoryID=Categories.CategoryID  --kategorýlerýn býr araya getýrýlmesý anlamýna gelýyor. on sart anlamýnda 
select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName from Products inner join Categories on.Products.CategoryID=Categories.CategoryID where UnitPrice>10
--Product tablosundan 3 alaný kategorýden 2 alaný getýrmek ýstýyorum. Fýyatý 10 dan buyuk olan urunlerý  kategorý adý ile getýrecek.

select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID
-- Inner joýn sadece eslesen kayýtlarý getýrýr.

select * from Products p left join [Order Details] od on p.ProductID=od.ProductID  inner join Orders o  on o.OrderID=od.OrderID  -- yazýma gore  solda olup sagda olmayanlarý da  getýr.

 select* from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null       --müsterýlerde olup siparsýlerde olmayanlarý da getýr. null demek o data yok demek. primary key uygularýz.
 









