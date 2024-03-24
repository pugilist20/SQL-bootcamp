select pizzeria.name,
       count(po.menu_id)    as count_of_price,
       round(avg(price), 2) as average_price,
       max(price)           as max_price,
       min(price)           as min_price
from pizzeria
         join menu m on pizzeria.id = m.pizzeria_id
         join person_order po on m.id = po.menu_id
group by 1
order by 1