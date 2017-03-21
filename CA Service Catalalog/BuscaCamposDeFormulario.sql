SELECT	form_elem_name
		    , form_elem_value
FROM	      usm_request_item_form 
	LEFT JOIN	usm_subscription_detail 
			   ON	subscription_detail_id = usm_subscription_detail.id 
WHERE request_id = '10574' --Altere pelo código da sua requisição
AND subscription_type = 5
AND is_visible = 1
ORDER BY request_id
