select
    pid::text as p_id,
    color_id::text as color_id,
    color_value::text as color_value,
    dw_insert_timestamp::timestamp as dw_insert_timestamp
from {{ ref('rugs_usa_color_map') }}
