select EVENT, WAIT_TIME, TIME_SINCE_LAST_WAIT_MICRO
from V$SESSION_WAIT_HISTORY
where sid = &sid
/