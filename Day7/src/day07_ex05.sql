select distinct person.name
from person
         join person_order po on person.id = po.person_id
order by 1