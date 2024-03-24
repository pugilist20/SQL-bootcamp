select distinct name from pizzeria
join menu on menu.pizzeria_id=pizzeria.id
join person_visits on person_visits.pizzeria_id=menu.pizzeria_id
where person_visits.visit_date='2022-01-08' and person_visits.person_id=9 and price<800
