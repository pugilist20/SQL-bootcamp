SELECT order_date, CONCAT(person.name,': ',person.age) as person_information from person
JOIN person_order on person.id = person_order.person_id
order by order_date, person_information