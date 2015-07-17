with
  ints(n) as (
    select 5 union
    select n+1 from ints where n<15
  )
select n , n*n from ints where n%2 = 1;

with fib(pre, cur) as (
  select 0,1 union
  select cur , pre+cur from fib
  where cur <= 100
  )
select pre as fib from fib;

with
  wall(n) as (
  select 99 union select 98 union select 97 
)
select n || "bottles" from wall;
