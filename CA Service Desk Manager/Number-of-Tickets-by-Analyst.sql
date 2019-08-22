SELECT con.alias, COUNT(req.id)
FROM call_req req
INNER JOIN  ca_contact con
ON req.assignee = con.contact_uuid
WHERE DATEADD(ss, open_date, '19700101') > '20170101'
AND DATEADD(ss, open_date, '19700101') < '20170201'
GROUP BY con.alias
