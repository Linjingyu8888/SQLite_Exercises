select *
from customers
where strftime('%m-%d', birthdate) between '03-21' and '04-19' and 
strftime('%Y', birthdate) in ('1946', '1958', '1970', '1982', '1994', '2006')
and citystatezip like 'South Ozone Park%';

--recursive chinese calendar:
--with recursive chinese_calendar (year) as (
--select 1934
--union all
--select year + 12
--from chinese_calendar
--where year<2100
--)
--select year
--from chinese_calendar;
    