
select name, products.sku, count(name) as frequency, phone, products."desc", address
from customers
join orders on customers.customerid = orders. customerid
join orders_items on orders.orderid = orders_items.orderid
join products on products.sku = orders_items.sku
where products.sku like 'PET%' and customers.citystatezip like '%Queens Village%'
group by name 
order by frequency desc;
