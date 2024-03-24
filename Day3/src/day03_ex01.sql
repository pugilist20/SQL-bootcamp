select menu.id as menu_id from menu
except
select distinct person_order.menu_id from person_order
order by 1