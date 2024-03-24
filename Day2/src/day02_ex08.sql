select name from person
join person_order po on person.id = po.person_id
join menu m on po.menu_id = m.id
where address in ('Moscow','Samara') and gender='male' and m.pizza_name in ('pepperoni pizza', 'mushroom pizza')
order by name desc 