1-- Write your PostgreSQL query statement below
2select p.product_id, p.product_name
3  from Product p
4 where p.product_id IN (
5    select p.product_id
6      from Product p
7      join Sales s
8        on p.product_id = s.product_id
9     where s.sale_date between '2019-01-01' and '2019-03-31')
10      and p.product_id NOT IN (
11        select p.product_id
12          from Product p
13          join Sales s
14            on p.product_id = s.product_id
15         where s.sale_date < '2019-01-01' or s.sale_date > '2019-03-31')