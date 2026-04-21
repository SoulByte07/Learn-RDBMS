select invoicedate, count(stockcode) as variety
from products
where invoicedate = '2010-12-01'
group by stockcode
limit 10;
