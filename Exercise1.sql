
with customers_with_name(last_name, phone) as (
select 
    substr(lower(name), instr(name, ' ') + 1) as last_name,
    phone
from
    customers)
---the above query is to create a virtual table(Common Table Expressions, or CTEs)
select *, length(last_name) as L
from customers_with_name
where L=10 and instr(last_name,' ')=0
and ((substr(last_name,1,1) in ('a','b','c') and substr(phone,1,1)='2')
or (substr(last_name,1,1) in ('d','e','f') and substr(phone,1,1)='3')
or (substr(last_name,1,1) in ('g','h','i') and substr(phone,1,1)='4')
or (substr(last_name,1,1) in ('j','k','l') and substr(phone,1,1)='5')
or (substr(last_name,1,1) in ('m','n','o') and substr(phone,1,1)='6')
or (substr(last_name,1,1) in ('p','q','r','s') and substr(phone,1,1)='7')
or (substr(last_name,1,1) in ('t','u','v' )and substr(phone,1,1)='8')
or (substr(last_name,1,1) in ('w','x','y','z') and substr(phone,1,1)='9')
)
and ((substr(last_name,2,1) in ('a','b','c') and substr(phone,2,1)='2')
or (substr(last_name,2,1) in ('d','e','f') and substr(phone,2,1)='3')
or (substr(last_name,2,1) in ('g','h','i') and substr(phone,2,1)='4')
or (substr(last_name,2,1) in ('j','k','l') and substr(phone,2,1)='5')
or (substr(last_name,2,1) in ('m','n','o') and substr(phone,2,1)='6')
or (substr(last_name,2,1) in ('p','q','r','s') and substr(phone,2,1)='7')
or (substr(last_name,2,1) in ('t','u','v' )and substr(phone,2,1)='8')
or (substr(last_name,2,1) in ('w','x','y','z') and substr(phone,2,1)='9')
)
order by phone;