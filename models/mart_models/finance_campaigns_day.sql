SELECT *, operational_margin - ads_cost as ads_margin
FROM {{ref("int_campaigns_day")}} AS c
LEFT JOIN {{ref("finance_days")}}
 USING(date_date)