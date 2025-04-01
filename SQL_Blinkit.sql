#1.Import Data from table Grocery Sales using the provided CSV File.


create database blinkit;
 
use blinkit;

show tables;

select * from blinkit1;

#2. Write an SQL query to show all Item_Identifier

SELECT distinct(Item_Identifier)
FROM blinkit1


#3.  Write an SQL query to show count of total Item_Identifier.

select count(Item_Identifier) 
from blinkit1 ;

#4.Write an SQL query to show maximum Item Weight.
select max(Item_Weight) 
from blinkit1;

#5.Write an SQL query to show minimum Item Weight.\

select min(Item_Weight) 
from blinkit1;

#6. Write an SQL query to show average Item_Weight.
select avg(Item_Weight) 
from blinkit1;

select * from blinkit1;
#7.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.


select count(Item_Fat_Content) from blinkit1  where Item_Fat_Content ="low Fat";

#8.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(Item_Fat_Content) from blinkit1 where Item_Fat_Content ="Regular";

#9. Write an SQL query to show maximum Item_MRP

select max(Item_MRP) from blinkit1; 

#10.Write an SQL query to show minimum Item_MRP

select min(Item_MRP) from blinkit1; 

#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from blinkit1 where Item_MRP <200;

#12.Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat

select max(Item_MRP) from blinkit1 where Item_Fat_Content ="Low Fat"

#13.      Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(Item_MRP) from blinkit1 where Item_Fat_Content ="Low Fat"

#14.      Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from blinkit1 where Item_MRP between 50 and 100;

#15.      Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct (Item_Fat_Content) from blinkit1;

#16.Write an SQL query to show ALL UNIQUE value of  Item_Type
  
select distinct (Item_Type ) from blinkit1;


#17.Write an SQL query to show ALL DATA in descending ORDER by Item MRP

select * from blinkit1  order by Item_MRP desc;

#20.      Write an SQL query to show DATA of item_type dairy & Meat

select * from blinkit1 where Item_Type in ('dairy','Meat');

#21.      Write an SQL query to show ALL UNIQUE value of Outlet_Size

select distinct(Outlet_Size) 
from blinkit1;

#22.      Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select distinct Outlet_Location_Type 
from blinkit1 ;

#23.      Write an SQL query to show ALL UNIQUE value of Outlet_Type

select distinct outlet_Type 
from blinkit1;

#24.      Write an SQL query to show count of number of items by Item_Type  and order it in descending order

select Item_Type ,count(Item_Identifier ) no_of_Item 
from blinkit1 
group by Item_Type 
order by no_of_Item desc;

#25.      Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order

select Outlet_Size , count(Item_Identifier) no_of_count from blinkit1
group by Outlet_Size 
order by no_of_count asc;

#27.      Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order

 select Outlet_Location_Type ,count(Item_identifier) no_of_count 
 from blinkit1 
 group by Outlet_Location_Type
 order by no_of_count asc
 
#28.      Write an SQL query to show maximum MRP by Item_Type
 
 select Item_Type  , max(Item_MRP   ) max_Mrp 
 from blinkit1
 group by item_type  
 order by max_mrp  desc;

#29.      Write an SQL query to show minimum MRP by Item_Type
 
 select Item_Type, min(Item_MRP) min_Mrp
from blinkit1
group by Item_Type 

#30.      Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, min(Item_MRP) min_Mrp
from blinkit1 
group by outlet_establishment_year 
order by min_mrp desc; 

#31.      Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year, max(Item_MRP) max_Mrp
from blinkit1 
group by outlet_establishment_year 
order by max_mrp desc; 


#32.      Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select Outlet_Size , avg(Item_MRP) avg_Mrp
from blinkit1 
group by Outlet_Size  
order by avg_mrp desc; 
 

#34.      Write an SQL query to show maximum MRP by Outlet_Type

select Outlet_Type, max(Item_MRP) max_mrp 
from blinkit1 
group by Outlet_Type ;

#35.      Write an SQL query to show maximum Item_Weight by Item_Type

select Item_Type, max(Item_Weight ) max_Weight 
from blinkit1 
group by Item_Type;

#36.      Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year

select Outlet_Establishment_Year , max(Item_Weight ) max_Weight
from blinkit1 
group by Outlet_Establishment_Year;

#37.      Write an SQL query to show minimum Item_Weight by Outlet_Type

select Outlet_Type  , max(Item_Weight ) min_Weight
from blinkit1 
group by Outlet_Type;

#38.      Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

select Outlet_Location_Type  , avg(Item_Weight ) avg_Weight
from blinkit1 
group by Outlet_Location_Type 
order by avg_weight desc  ;

#39.      Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select Item_Type, max(Item_Outlet_Sales ) max_sales 
from blinkit1 
group by item_type ;

#40.      Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

select Item_Type, min(Item_Outlet_Sales ) min_sales 
from blinkit1
group by item_type;


#41.      Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year

select Outlet_Establishment_year, min(Item_Outlet_Sales) min_sales 
from blinkit1 
group by Outlet_Establishment_Year ;

#42.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select Outlet_Establishment_year, max(Item_Outlet_Sales) max_sales 
from blinkit1 
group by Outlet_Establishment_Year 
order by max_sales desc;

#43.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

select Outlet_Size , avg(Item_Outlet_Sales) avg_sales 
from blinkit1 
group by Outlet_Size  
order by avg_sales desc;

#44.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select Outlet_Type, avg(Item_Outlet_Sales) avg_Sales 
from blinkit1
group by outlet_type ;

#45.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type

select Outlet_Type, max(Item_Outlet_Sales) max_Sales 
from blinkit1
group by outlet_type ;

#46.      Write an SQL query to show total Item_Outlet_Sales by Item_Type

select Item_Type, sum(Item_Outlet_Sales) count_sales
from blinkit1
group by Item_Type ;

#47.      Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content

select Item_Fat_Content, sum(Item_Outlet_Sales) total_Sales
from blinkit1 
group by Item_Fat_Content ;

#48.      Write an SQL query to show maximum Item_Visibility by Item_Type

select Item_Type, max(Item_Visibility) max_visi
from blinkit1 
group by Item_Type ;

#49.      Write an SQL query to show Minimum Item_Visibility by Item_Type

select Item_Type, min(Item_Visibility) min_visi
from blinkit1 
group by Item_Type ;

select * from blinkit1;

#50.      Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select Item_Type, sum(Item_Outlet_Sales) total_Sales from blinkit1 
where Outlet_Location_Type = 'Tier 1'
group by item_type;


#51.      Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select Item_Type ,sum(Item_Outlet_Sales) totel_Sales 
from blinkit1 
where Item_Fat_Content  in ('Low Fat','LF')
group by Item_Type 