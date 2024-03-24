insert into person_order
values ((select max(person_order.id) from person_order) + 1, (select person.id from person where name = 'Denis'),
        (select menu.id from menu where pizza_name = 'sicilian pizza'), '2022-02-24'),
       ((select max(person_order.id) from person_order) + 2, (select person.id from person where name = 'Irina'),
        (select menu.id from menu where pizza_name = 'sicilian pizza'), '2022-02-24')