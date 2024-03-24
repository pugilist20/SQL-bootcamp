create index if not exists idx_person_order_multi on person_order(person_id,menu_id,order_date);
set enable_seqscan to off;
explain analyze SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;

SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 6 AND menu_id = 13;