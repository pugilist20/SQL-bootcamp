select pizza_name, price, name as pizzeria_name, visit_date from person_visits
join pizzeria p on person_visits.pizzeria_id = p.id
join menu m on p.id = m.pizzeria_id
where person_id=3 and price between 800 and 1000
order by 1,2,3;