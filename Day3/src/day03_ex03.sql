(SELECT pizzeria.name as pizzeria_name from pizzeria
join person_visits pv on pizzeria.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where gender='female'
except all
SELECT pizzeria.name as pizzeria_name from pizzeria
join person_visits pv on pizzeria.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where gender='male')
union all
(SELECT pizzeria.name as pizzeria_name from pizzeria
join person_visits pv on pizzeria.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where gender='male'
except all
SELECT pizzeria.name as pizzeria_name from pizzeria
join person_visits pv on pizzeria.id = pv.pizzeria_id
join person p on pv.person_id = p.id
where gender='female')
order by 1;