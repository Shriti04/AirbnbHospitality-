show databases;
create database project;
use project;

select * from Listings l ;
select * from Booking b ;

#2 Write a query to show names from Listings table
select name from Listings l;


#3.Write a query to fetch total listings from the listings table
select count(id) from Listings l ;

#.4 Write a query to fetch total listing_id from the booking_details table
select count(listing_id) from Booking b ;



#5.           Write a query to fetch host ids from listings table
select host_id  from Listings l ;

#6.           Write a query to fetch all unique host name from listings table
select host_name  from Listings l;

#7.Write a query to show all unique neighbourhood_group from listings table
select neighbourhood_group  from  Listings l;

#8. Write a query to show all unique neighbourhood from listings table
select neighbourhood  from Listings l;

#9.Write a query to fetch unique room_type from listings tables
select room_type  from Listings l ;

#10. Write a query to show all values of Brooklyn & Manhattan from listings tables
select * from Listings l where neighbourhood_group  in("Brooklyn",  "Manhattan");

#11.      Write a query to show maximum price from booking_details table
select max(price) from Booking b ;


#12.      Write a query to show minimum price fron booking_details table
select min(price) from Booking b ;

#13.      Write a query to show average price from booking_details table
select avg(price) from Booking b ;

select * from Booking b ;

#14.      Write a query to show minimum value of minimum_nights from booking_details table
select min(minimum_nights)from Booking b ;

#15.      Write a query to show maximum value of minimum_nights from booking_details table
select max(minimum_nights)from Booking b ;


#16.      Write a query to show average availability_365
select avg(availability_365)from Booking b ;

#17.      Write a query to show id , availability_365 and all availability_365 values greater than 300
select listing_id  , availability_365 from Booking b where availability_365 > 300;

#18.      Write a query to show count of id where price is in between 300 to 400
select count(listing_id)  from Booking b where price  between 300 and 400; 

#19.      Write a query to show count of id where minimum_nights spend is less than 5
select count(listing_id)  from Booking b where minimum_nights <5;

select * from Listings l ;
select * from Booking b ;

#20.      Write a query to show count where minimum_nights spend is greater than 100
select listing_id , minimum_nights  from Booking b where minimum_nights >100;
select count(listing_id)from Booking b where minimum_nights >100;

#21.      Write a query to show all data of listings & booking_details
select * from Listings inner join Booking on Listings.id =Booking.listing_id;

#22.      Write a query to show host name and price
select Listings.host_name , booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id;

#23.      Write a query to show room_type and price
select Listings.room_type  , booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id;

#24.      Write a query to show neighbourhood_group & minimum_nights spend
select Listings.neighbourhood_group  , booking.minimum_nights  from Listings inner join Booking on Listings.id =Booking.listing_id;

#25.      Write a query to show neighbourhood & availability_365
select Listings.neighbourhood  , booking.availability_365  from Listings inner join Booking on Listings.id =Booking.listing_id;

#26.      Write a query to show total price by neighbourhood_group
select Listings.neighbourhood_group ,sum(Booking.price)  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.neighbourhood_group ;

#27.      Write a query to show maximum price by neighbourhood_group
select Listings.neighbourhood_group ,max(Booking.price)  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.neighbourhood_group ;


#28.      Write a query to show maximum night spend by neighbourhood_group
select Listings.neighbourhood_group ,max(Booking.minimum_nights)max_night  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.neighbourhood_group ;

#29.      Write a query to show maximum reviews_per_month spend by neighbourhood
select Listings.neighbourhood ,max(Booking.reviews_per_month) max_review from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.neighbourhood ;


#30.      Write a query to show maximum price by room type
select Listings.room_type  ,max(Booking.price)max_price  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.room_type ;

#31.      Write a query to show average number_of_reviews by room_type
select Listings.room_type  ,avg(Booking.number_of_reviews)avg_review  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.room_type ;


#32.      Write a query to show average price by room type
select Listings.room_type  ,avg(Booking.price)avg_price  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.room_type ;


#33.      Write a query to show average night spend by room type
select Listings.room_type  ,avg(Booking.minimum_nights)avg_night_spend  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.room_type ;


#34.      Write a query to show average price by room type but average price is less than 100
select Listings.room_type  ,avg(Booking.price)avg_price  from Listings inner join Booking on Listings.id =Booking.listing_id group by Listings.room_type having avg_price<100  ;


#35.      Write a query to show average night by neighbourhood and average_nights is greater than 5
select Listings.neighbourhood ,avg(Booking.minimum_nights)averagg_nights from Listings inner join Booking on Listings.id= Booking.listing_id
group by Listings.neighbourhood having averagg_nights>5 ;


#36.      Write a query to show all data from listings where price is greater than 200 using sub-query.
select * from Listings where id in  (select id  from Booking where price>200);


#37.      Write a query to show all values from booking_details table where host id is 314941 using sub-query.
select * from Booking b  where listing_id in (select listing_id from Listings l  where host_id =314941);

#38.      Find all pairs of id having the same host id, each pair coming once only.
select distinct l1.id , l1.host_id from Listings l1, Listings l2
where  l1.host_id = l2.host_id and l1.id  <> l2.id  order by host_id;

#39.      Write an sql query to show fetch all records that have the term cozy in name
select * from Listings l where name like '%cozy%'

#40.      Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select Booking.price, Listings.host_id , Listings.neighbourhood_group from Listings inner join Booking on Listings.id =Booking.listing_id
where listings.neighbourhood_group = "manhattan";

select * from Listings l ;
select * from Booking b ;


#41.      Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood,
# also make sure price is greater than 100
select Listings.id , Listings.host_name  , Listings.neighbourhood, Booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id
where listings.neighbourhood in ("West Side" & "Williamsburg neighbourhood") and Booking.price>100 ;


#42.      Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select Listings.id , Listings.host_name  , Listings.neighbourhood, Booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id
where Listings.host_name = 'Elise' and Listings.neighbourhood ='Bedford-Stuyvesant' ;

#43.      Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select Listings.host_name , Booking.minimum_nights ,Booking.availability_365 from Listings inner join Booking on Listings.id =Booking.listing_id
where Booking.availability_365>100 and Booking.minimum_nights >100;


#44.      Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month 
#but show only that records where number of reviews are 500+ and review per month is 5+
select Listings.id ,Listings.host_name  , Booking.number_of_reviews ,Booking.reviews_per_month  from Listings inner join Booking on Listings.id =Booking.listing_id
where Booking.number_of_reviews >500 and Booking.reviews_per_month  >5;


#45.      Write a query to show neighbourhood_group which have most total number of review
select Listings.neighbourhood_group ,sum(Booking.number_of_reviews)total_number  from Listings inner join Booking on Listings.id =Booking.listing_id
group by Listings.neighbourhood_group order by total_number desc limit 1;


#46.      Write a query to show host name which have most cheaper total price
select Listings.host_name, sum(Booking.price)Cheaper_price  from Listings inner join Booking on Listings.id =Booking.listing_id
group by Listings.host_name  order by cheaper_price asc limit 1;

#47.      Write a query to show host name which have most costly total price
select Listings.host_name, sum(Booking.price)Costly_price  from Listings inner join Booking on Listings.id =Booking.listing_id
group by Listings.host_name  order by Costly_price desc limit 1;

#48.      Write a query to show host name which have max price using sub-query
select Listings.host_name, Booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id
where Booking.price in (select max(price)from Booking) ;

#49.      Write a query to show neighbourhood_group where price is less than 100
select Listings.neighbourhood_group , Booking.price  from Listings inner join Booking on Listings.id =Booking.listing_id
where Booking.price <100;

#50.      Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.
select max(Booking.price)max_price, avg(Booking.availability_365)avg_availability,Listings.room_type from Listings inner join Booking on Listings.id =Booking.listing_id
group by Listings.room_type order by max_price asc;

 

 

 

 

 