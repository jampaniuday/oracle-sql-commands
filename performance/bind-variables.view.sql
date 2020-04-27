-- script: bind-variables.view.sql
-- author: Richard K @ www.rkkoranteng.com
-- description: show the bind variable for a given sqlid
-- usage: @bind-variables.view.sql <sql-id>

set pause on
set pause 'press return to continue'
set pagesize 1000000000
set linesize 300
 
column sql_text format a120
column sql_id format a13
column bind_name format a10
column bind_value format a26
 
select 
  sql_id,
  t.sql_text sql_text,  
  b.name bind_name,
  b.value_string bind_value 
from
  v$sql t 
join
  v$sql_bind_capture b  using (sql_id)
where
  b.value_string is not null  
and
  sql_id='&sqlid'
/
