create INDEX IF NOT EXISTS idx_person_name ON person (name);
explain select name from person
where (upper(name)='DMITRIY')