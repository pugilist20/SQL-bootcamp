select pizzeria.name, rating from pizzeria
where not exists (SELECT pizzeria_id from person_visits where person_visits.pizzeria_id=pizzeria.id)