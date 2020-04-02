-- enable autotask job

BEGIN
  DBMS_AUTO_TASK_ADMIN.ENABLE (
    client_name => 'sql tuning advisor'
,   operation   => NULL
,   window_name => NULL
);
END;
/

BEGIN
  DBMS_AUTO_TASK_ADMIN.ENABLE (
    client_name => 'auto optimizer stats collection'
,   operation   => NULL
,   window_name => NULL
);
END;
/

BEGIN
  DBMS_AUTO_TASK_ADMIN.ENABLE (
    client_name => 'auto space advisor'
,   operation   => NULL
,   window_name => NULL
);
END;
/
