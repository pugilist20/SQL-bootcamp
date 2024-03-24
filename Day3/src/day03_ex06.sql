select distinct m.pizza_name, pizzeria.name as pizzeria_name1, p.name as pizzeria_name2, m.price
from pizzeria
         join menu m on pizzeria.id = m.pizzeria_id
         join menu subm on m.price=subm.price
         join pizzeria p on p.id= subm.pizzeria_id
         where m.pizza_name=subm.pizza_name
           AND pizzeria.name<p.name
order by 1, 2, 3
