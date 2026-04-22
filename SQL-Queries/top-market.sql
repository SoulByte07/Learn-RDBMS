select country, sum(quantity) as quantity
from products
group by country
order by quantity desc
limit 5;
