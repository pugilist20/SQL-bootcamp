CREATE SEQUENCE IF NOT EXISTS seq_person_discounts as integer MINVALUE 1;
ALTER SEQUENCE seq_person_discounts owned by person_discounts.id;
alter table person_discounts alter column id set default nextval('seq_person_discounts');
select setval('seq_person_discounts',(select count(*) from person_discounts)+1);
