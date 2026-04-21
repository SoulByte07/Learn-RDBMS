select quantity, country 
from products
group by country
order by quantity desc
limit 5;
