select address, p.name, count(po.menu_id) as count_of_orders from person
join person_order po on person.id = po.person_id
join menu m on po.menu_id = m.id
join pizzeria p on m.pizzeria_id = p.id
group by (address, 2)
order by 1, 2