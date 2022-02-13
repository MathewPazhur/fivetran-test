with island as 
(
    select * from "INTERVIEW_DB"."PLAYGROUND_MATHEW_PAZHUR"."ISLAND"
),
location_level as
(
    select * from "INTERVIEW_DB"."PLAYGROUND_MATHEW_PAZHUR"."LOCATION_LEVEL"
),
special_status as 
(
    select * from "INTERVIEW_DB"."PLAYGROUND_MATHEW_PAZHUR"."SPECIALSTATUS"
),
final as 
(
    select a.*, i.island_id,ll.location_level_id,ss.special_status_id 
    from "INTERVIEW_DB"."PLAYGROUND_MATHEW_PAZHUR"."COVID_19_INDONESIA_MATHEW_PAZHUR" a 
    join island i on a.island=a.island
    join location_level ll on ll.location_level=a.location_level
    join special_status ss on ss.special_status=a.special_status
)
select *
from final