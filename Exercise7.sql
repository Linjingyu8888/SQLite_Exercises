DROP VIEW IF EXISTS emily_items;
CREATE temp VIEW emily_items AS 
    SELECT name, phone, orders.orderid +1 AS o,
    products.'desc' AS d
    FROM customers
    JOIN orders ON 
         customers.customerid = orders.customerid
    JOIN orders_items ON 
         orders.orderid = orders_items.orderid
    JOIN products ON 
         products.sku = orders_items.sku
    WHERE 
        name LIKE '%Emily Randolph';
--create a new table to know what Emily Randolph has bought

Select distinct 
    customers.name,
    customers.phone,
    orders.ordered,
    products.'desc',
    d
From 
     customers
    JOIN orders ON 
         customers.customerid = orders.customerid
    JOIN orders_items ON 
         orders.orderid = orders_items.orderid
    JOIN products ON 
         products.sku = orders_items.sku
    JOIN emily_items on orders.orderid = emily_items.o
where products.'desc' like '%(%)';

