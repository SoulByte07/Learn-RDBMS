select customerid, sum(unitprice * quantity) as totalpurchase
from products
group by customerid 
order by totalpurchase desc
limit 10;
