select pizza_name, pizzeria.name as pizzeria_name from menu
join pizzeria on menu.pizzeria_id=pizzeria.id
join person_order on menu.id = menu_id
where person_order.person_id=1 or person_order.person_id=4
order by 1,2;
