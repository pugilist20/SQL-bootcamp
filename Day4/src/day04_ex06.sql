CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats as
(SELECT pizzeria.name as pizzeria_name
FROM pizzeria
         JOIN menu m on pizzeria.id = m.pizzeria_id
         JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
         JOIN person ON person.id = person_visits.person_id
WHERE (person_visits.visit_date = '2022-01-08' AND person.name = 'Dmitriy' AND m.price < 800));
