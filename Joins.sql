select * from sales;

select * from people;

select s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales as s
join people as p on p.SPID = s.SPID;

select s.saledate, s.amount, pr.product
from sales as s
left join products as pr on pr.pid = s.pid;

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid;


select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
where s.amount < 500
and p.Team = 'Delish';


select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
where s.amount < 500
and p.Team = '';

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products as pr on pr.pid = s.pid
join geo as g on g.geoid = s.GeoID
where s.amount < 500
and p.Team = ''
and g.Geo in ('New Zealand ', 'India')
order by SaleDate;