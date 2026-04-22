select * 
from products 
where description in ('WHITE METAL LANTERN' ,'WHITE HANGING HEART T-LIGHT HOLDER')
group by invoiceno
limit 10;
