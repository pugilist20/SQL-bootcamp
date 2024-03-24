create or replace function fnc_fibonacci(lim int default 10) returns setof int as
$$
declare
    counter int=0;
    current int=1;
    last    int=0;
begin
    while(current + last < lim)
        loop
            return query
                select current;
            select last + current, current into current,last;
        end loop;
    return query
        select current;
end;
$$ language plpgsql;
select *
from fnc_fibonacci(100);
select *
from fnc_fibonacci();