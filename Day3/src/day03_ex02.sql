select name, count(*) as pizzeria_name from pizzeria
join menu m on pizzeria.id = m.pizzeria_id
join person_order po on m.id = po.menu_id
group by name