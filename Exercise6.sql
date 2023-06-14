
select name, count(name) as frequency, phone, products.wholesale_cost, orders_items.unit_price 
from customers
join orders on customers.customerid = orders. customerid
join orders_items on orders.orderid = orders_items.orderid
join products on products.sku = orders_items.sku
where products.wholesale_cost > orders_items.unit_price 
group by name 
order by frequency desc;
