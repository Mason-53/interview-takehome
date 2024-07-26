select
    size::text as size,
    shape::text as shape,
    price::numeric as price,
    width::numeric as width,
    sqft::numeric as sqft,
    type::text as type,
    stock::text as stock,
    height::numeric as height,
    variant::text as variant,
    p_id::text as p_id,
    pad_id::text as pad_id,
    dw_insert_timestamp::timestamp as dw_insert_timestamp
from {{ ref('rugs_usa_pads_upsell') }}
