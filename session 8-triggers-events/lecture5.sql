
SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_scheduler = OFF/ON to turn it ON or OFF

-- view event
SHOW EVENTS; -- OR SHOW EVENTS LIKE 'yearly'
DROP EVENT IF EXISTS eventName;
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;



