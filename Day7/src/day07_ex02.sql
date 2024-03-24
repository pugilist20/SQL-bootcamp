with order_check as(
    select p.name, count(pizzeria_id), 'order' as action_type from person_order
join menu m on person_order.menu_id = m.id
join pizzeria p on m.pizzeria_id = p.id
group by name
order by action_type, 2 desc
limit 3
),
visit_check as(select p2.name, count(pizzeria_id), 'visit' as action_type from person_visits
join pizzeria p2 on person_visits.pizzeria_id = p2.id
group by name
order by action_type, 2 desc
limit 3)
select * from order_check
union
select * from visit_check
order by action_type, 2 desc



