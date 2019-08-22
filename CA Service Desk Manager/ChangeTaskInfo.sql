SELECT wt.id "ID", tt.sym "Task", tst.sym "Task Status", tass.userid "Owner", mud.summary "Change"
FROM wf wt
	LEFT JOIN chg mud
		ON wt.object_id = mud.id
	LEFT JOIN tskty tt
		ON wt.task = tt.code
	LEFT JOIN tskstat tst
		ON wt.status=tst.code
	LEFT JOIN ca_contact tass
		ON wt.assignee=tass.contact_uuid
WHERE wt.persid = 'wf:407398' --Task Persistent ID
