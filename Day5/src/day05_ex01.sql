set enable_seqscan to off;

EXPLAIN ANALYZE select pizza_name, p.name from menu
join pizzeria p on menu.pizzeria_id = p.id;
