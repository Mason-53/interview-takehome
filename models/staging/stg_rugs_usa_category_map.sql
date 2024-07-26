select
    pid::text as p_id,
    category_id::text as category_id,
    category_value::text as category_value,
    dw_insert_timestamp::timestamp as dw_insert_timestamp
from {{ ref('rugs_usa_category_map') }}