select campaign, count(*)
from `tpw-data-warehouse.data_marts.transactions`
where 1=1
  and default_channel_grouping = "Direct"
  and date > "2024-09-01" -- FY 25
  and country = "UK"
group by campaign 
order by count(*) desc
