insert into person_visits
values ((select max(person_visits.id) from person_visits) + 1, (select person.id from person where name = 'Denis'),
        (select pizzeria.id from pizzeria where name = 'Dominos'), '2022-02-24'),
       ((select max(person_visits.id) from person_visits) + 2, (select person.id from person where name = 'Irina'),
        (select pizzeria.id from pizzeria where name = 'Dominos'), '2022-02-24')