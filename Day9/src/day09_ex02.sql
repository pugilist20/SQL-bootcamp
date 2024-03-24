create
    or replace function fnc_trg_person_delete_audit()
    returns trigger as
$trg_person_delete_audit$
begin
    if (tg_op = 'DELETE') then
        insert into person_audit select current_timestamp at time zone 'Europe/Moscow', 'D', old.*;
    end if;
    return null;
end;
$trg_person_delete_audit$ language plpgsql;
create trigger trg_person_delete_audit
    AFTER DELETE
    on person
    for each row
execute function fnc_trg_person_delete_audit();

DELETE FROM person WHERE id = 10;

