create view v_price_with_discount(name, pizza_name, price, discount_price) as
select p.name, menu.pizza_name, menu.price, round(menu.price-menu.price*0.1)::int  from menu
join person_order po on menu.id = po.menu_id
join person p on po.person_id = p.id
order by 1,2