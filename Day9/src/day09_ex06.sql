create or replace function fnc_person_visits_and_eats_on_date(pperson varchar default 'Dmitriy',
                                                              pprice numeric default 500,
                                                              pdate date default '2022-01-08') returns setof character varying AS
$$
BEGIN
    return query
        select pizzeria.name
        from pizzeria
                 join person_visits pv on pizzeria.id = pv.pizzeria_id
                 join person p on pv.person_id = p.id
                 join menu m on pizzeria.id = m.pizzeria_id
        where p.name = pperson
          and visit_date = pdate
          and price < pprice;
end;
$$ language plpgsql;
select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');


