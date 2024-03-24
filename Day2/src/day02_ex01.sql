select distinct visit_date as missing_date from person_visits
where visit_date not in (select visit_date from person_visits where person_id=1 or person_id=2)
order by missing_date;