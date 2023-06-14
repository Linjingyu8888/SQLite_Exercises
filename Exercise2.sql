
select customers.customerid, name, phone, orders.ordered
from customers
join orders on customers.customerid = orders.customerid
join orders_items on orders.orderid = orders_items.orderid
join products on products.sku = orders_items.sku
where name like 'J% D%' and orders.ordered like '2017%' and products.'desc' like '%clean%';
