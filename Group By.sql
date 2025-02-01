select geoID, sum(amount), avg(amount), sum(boxes)
from sales
group by geoID;

select g.Geo, sum(amount), avg(amount), sum(boxes)
from sales as s 
join geo as g on s.GeoID = g.GeoID
group by g.Geo;

select pr.category, p.team, sum(boxes), sum(amount)
from sales as s 
join people as p on p.spid = s.spid
join products as pr on pr.pid = s.pid
group by pr.category, p.team;


select pr.category, p.team, sum(boxes), sum(amount)
from sales as s 
join people as p on p.spid = s.spid
join products as pr on pr.pid = s.pid
where p.team <>''
group by pr.category, p.team
order by pr.category, p.team;

select pr.Product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc;


select pr.Product, sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10;