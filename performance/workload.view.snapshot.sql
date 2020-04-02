-- see the current AWR snapshot configuration
set lines 200
col SNAP_INTERVAL format a20
col RETENTION format a20
select * from dba_hist_wr_control;
