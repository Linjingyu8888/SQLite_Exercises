select name, birthdate, address, date()-birthdate as age, strftime('%m-%d, date()) as today,
strftime('%m-%d', birthdate) as birth
from customers
where birth=today;
