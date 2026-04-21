select invoiceno, sum(unitprice * quantity) as totalrevenue
from products
group by invoiceno
limit 10;
