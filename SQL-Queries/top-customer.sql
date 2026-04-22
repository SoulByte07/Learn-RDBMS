select customerid, sum(unitprice * quantity) as totalpurchase
from products
where customerid is not null
group by customerid 
order by totalpurchase desc
limit 10;
