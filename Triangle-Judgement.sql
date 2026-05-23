1-- Write your PostgreSQL query statement below
2select x, y, z, case
3  when x + y > z
4   and x + z > y
5   and y + z > x
6  then 'Yes'
7  else 'No' 
8  end
9  as triangle
10  from Triangle;
11