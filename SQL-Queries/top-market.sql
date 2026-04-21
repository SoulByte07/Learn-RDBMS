select quantity, country 
from products
order by quantity desc
group by country
limit 5;
