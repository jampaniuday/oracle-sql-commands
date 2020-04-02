-- modify AWR snapshot generation frequencey (this example changes the snapshot generation to every 10 minutes)
-- ORA-13511: INTERVAL must be in the range (10, 52560000)

exec dbms_workload_repository.modify_snapshot_settings(interval => 10);
