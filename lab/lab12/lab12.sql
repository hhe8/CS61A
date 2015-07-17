-- Requires the contents of file states.sql to be loaded first.
.read states.sql

-- Tables in states.sql:
--   states(state):       US States + DC - HI - AK
--   landlocked(state):   Table of landlocked (not adjacent to ocean) states
--   adjacencies(s1, s2): States that are adjacent to each other

create table california as
  -- REPLACE THIS LINE
--select state , s2 from states, adjacencies where state = s1 and state = "CA";
  select * from adjacencies where s1 = "CA";

-- Finds lengths of possible paths between two states
create table distances as
  with
    distance(start, end, hops) as (
      -- REPLACE THIS LINE
      select s1, s2, 1 from adjacencies union
      select start, s2, hops+1 from distance, adjacencies where hops < 15
      and end = s1
    )
  select * from distance;

create table three_hops as
  -- REPLACE THIS LINE
  select end from distances where start = "CA" and hops = 3;
