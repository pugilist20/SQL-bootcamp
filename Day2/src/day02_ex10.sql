select person.name as person_name1, p2.name as person_name2, person.address as common_address from person
join person p2 on p2.address=person.address
where p2.name>person.name
order by 1,2,3;