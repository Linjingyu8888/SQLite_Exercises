
select name, products.sku, orders.ordered, count(name) as frequency, phone, products."desc", address
from customers
join orders on customers.customerid = orders. customerid
join orders_items on orders.orderid = orders_items.orderid
join products on products.sku = orders_items.sku
where products.sku like 'BKY%' and (strftime('%H:%M:%S', orders.ordered) 
between '04:00:00' and '07:00:00')
group by name 
order by frequency desc;
