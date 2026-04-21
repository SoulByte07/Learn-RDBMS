select invoicedate, count(distinct(stockcode)) as variety
from products
where invoicedate like '%2010-12-01%'
limit 10;
