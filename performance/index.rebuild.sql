-- script: index.rebuild.sql
-- author: Richard K @ www.rkkoranteng.com
-- description: rebuild index belonging to a schema
-- usage: @index.rebuild.sql <schema>

set feedback off
set hea off pages 0
set echo off
set pagesize 0
set linesize 500
set verify off
set wrap off
define schema = '&1';
spool /tmp/rebuild_index.sql
select 'alter index &schema'||'.'|| index_name || ' rebuild;' from dba_indexes where owner=upper('&schema');
spool off
