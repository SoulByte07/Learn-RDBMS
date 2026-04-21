select min(unitprice) as min_price, max(unitprice) as max_price
from products
where description like '%WHITE METAL LANTERN%'
limit 10;
