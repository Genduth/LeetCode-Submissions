1-- Write your PostgreSQL query statement below
2select name
3  from SalesPerson
4 where sales_id not in (
5    Select o.sales_id
6      from Orders o
7      join Company c
8        on o.com_id = c.com_id
9      where c.name = 'RED'  
10 );