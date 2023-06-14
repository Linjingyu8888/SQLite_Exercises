
select name, count(name) as frequency, phone
from customers
join orders on customers.customerid = orders. customerid
join orders_items on orders.orderid = orders_items.orderid
join products on products.sku = orders_items.sku
where products.sku like 'COL%'
group by name 
order by frequency desc;
