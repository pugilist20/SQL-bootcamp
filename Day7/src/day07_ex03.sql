with order_check as (
    select p.name, count(pizzeria_id) as count
    from person_order
             join menu m on person_order.menu_id = m.id
             join pizzeria p on m.pizzeria_id = p.id
    group by name
    order by 2 desc
),
     visit_check as (select p2.name, count(pizzeria_id) as count
                     from person_visits
                              join pizzeria p2 on person_visits.pizzeria_id = p2.id
                     group by name
                     order by 2 desc
     )
select pizzeria.name, order_check.count + visit_check.count as total_count
from pizzeria
         join order_check on order_check.name = pizzeria.name
         join visit_check on visit_check.name = pizzeria.name
where order_check.name = visit_check.name
order by 2 desc, name



