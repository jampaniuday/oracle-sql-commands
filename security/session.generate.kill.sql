-- output command for kill all sessions belonging to a user
-- prompt to enter username

select 'alter system kill session '''||sid||','||serial#||''' immediate ;' from v$session where username=upper('&USERNAME');
