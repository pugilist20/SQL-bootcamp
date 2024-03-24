SELECT order_date as action_date, (Select name from person where person_order.person_id=person.id ) as name from person_order
INTERSECT
SELECT visit_date as action_date, (Select name from person where person_visits.person_id=person.id ) as name FROM person_visits
order by action_date, name desc;