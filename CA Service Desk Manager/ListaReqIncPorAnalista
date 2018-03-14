SELECT top 15 req.id, req.persid, req.summary, con.userid, req.open_date,
  CASE req.type
      when 'I' then 'Incidente'   
      when 'R' then 'Requisição'
  end as type
FROM call_req req
  INNER JOIN  ca_contact con
    ON req.customer = con.contact_uuid
WHERE req.type IN ('I','R')
  AND con.userid = 'jbrown' -- ID do usuário
ORDER BY req.open_date DESC
