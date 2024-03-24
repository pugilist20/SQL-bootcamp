SELECT pv.order_date, CONCAT(name, ': ', age) as person_information
FROM person
         NATURAL JOIN (select person_id as id, order_date from person_order) as pv
ORDER BY order_date, person_information