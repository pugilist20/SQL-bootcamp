select person.name, pizzeria.name as pizzeria_name, price, price-(price*(discount/100)) as discount_price, pizza_name from person
join person_order po on person.id = po.person_id
join menu m on po.menu_id = m.id
join pizzeria on m.pizzeria_id = pizzeria.id
join person_discounts pd on person.id = pd.person_id
order by 1,2