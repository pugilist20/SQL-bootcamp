create index if not exists idx_menu_unique on menu(pizzeria_id,pizza_name);
set enable_seqscan to off;
explain analyze
select pizzeria_id,pizza_name from menu
where pizzeria_id<4 and pizza_name='cheese pizza';