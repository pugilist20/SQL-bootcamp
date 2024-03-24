select name from person
join person_order po on person.id = po.person_id
join menu m on po.menu_id = m.id
where gender='female' and (m.pizza_name='pepperoni pizza' or m.pizza_name='cheese pizza')
group by name
having count(*)=2
order by name;