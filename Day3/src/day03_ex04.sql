(SELECT pizzeria.name as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
join person p2 on po.person_id = p2.id
where gender='female'
except
SELECT pizzeria.name as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
join person p2 on po.person_id = p2.id
where gender='male')
union
(SELECT pizzeria.name as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
join person p2 on po.person_id = p2.id
where gender='male'
except
SELECT pizzeria.name as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
join person p2 on po.person_id = p2.id
where gender='female')
order by 1;