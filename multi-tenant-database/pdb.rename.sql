-- script: pdb.rename.sql
-- author: Richard K @ www.rkkoranteng.com
-- description: rename pluggable database
-- usage: @pdb.rename.sql <old pdb>  <new pdb>

define oldpdb = '&1';
define newpdb = '$2';
alter pluggable database upper('&oldpdb') close immediate;
alter pluggable database upper('&oldpdb') open restricted;
alter session set container = upper('&oldpdb');
alter pluggable database upper('&oldpdb') rename global_name to upper('&newpdb');
alter pluggable database close immediate;
alter pluggable database open;
