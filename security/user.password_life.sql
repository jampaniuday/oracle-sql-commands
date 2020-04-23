-- check password_life_time for users in db

select a.username,b.limit as password_life 
from dba_users a, dba_profiles b 
where 
a.profile='DEFAULT' 
and b.resource_name='PASSWORD_LIFE_TIME'
/
