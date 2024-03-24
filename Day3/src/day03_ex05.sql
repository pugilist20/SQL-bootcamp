select distinct  pizzeria.name as pizzeria_name from pizzeria
join person_visits pv on pizzeria.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where p.name='Andrey'
except
select distinct pizzeria.name as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
join person p2 on po.person_id = p2.id
where p2.name='Andrey'



