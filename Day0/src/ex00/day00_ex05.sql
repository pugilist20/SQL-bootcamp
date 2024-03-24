SELECT (SELECT name from person WHERE person.id = person_order.person_id) as name from person_order
where id in (13,14,18) and order_date='2022-01-07'