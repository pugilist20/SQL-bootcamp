drop trigger trg_person_insert_audit on person;
drop trigger trg_person_update_audit on person;
drop trigger trg_person_delete_audit on person;

drop function fnc_trg_person_insert_audit();
drop function fnc_trg_person_update_audit();
drop function fnc_trg_person_delete_audit();

truncate person_audit cascade;

create
    or replace function fnc_trg_person_audit()
    returns trigger as
$trg_person_audit$
begin
    if (tg_op = 'DELETE') then
        insert into person_audit select current_timestamp at time zone 'Europe/Moscow', 'D', old.*;
    elseif (tg_op = 'UPDATE') then
        insert into person_audit select current_timestamp at time zone 'Europe/Moscow', 'U', old.*;
    elseif (tg_op = 'INSERT') then
        insert into person_audit select current_timestamp at time zone 'Europe/Moscow', 'I', new.*;
    end if;
    return null;
end;
$trg_person_audit$ language plpgsql;
create trigger trg_person_audit
    AFTER DELETE OR UPDATE OR INSERT
    on person
    for each row
execute function fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address)
VALUES (11, 'Damir', 22, 'male', 'Irkutsk');
UPDATE person
SET name = 'Bulat'
WHERE id = 11;
UPDATE person
SET name = 'Damir'
WHERE id = 11;
DELETE
FROM person
WHERE id = 11;

