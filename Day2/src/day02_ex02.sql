select  coalesce(person.name,'-') as person_name,main.visit_date as visit_date, coalesce(pizzeria.name, '-') as pizzeria_name
from person
full join (SELECT * FROM person_visits
WHERE (visit_date BETWEEN '2022-01-01' AND '2022-01-03')
) as main on main.person_id=person.id
full join pizzeria on main.pizzeria_id=pizzeria.id
order by 1,2,3
