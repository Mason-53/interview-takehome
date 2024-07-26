select
    base_url::text as base_url,
    page_links::text as page_links,
    card_links::text as card_links,
    request_time_stamp::timestamp as request_time_stamp,
    dw_insert_timestamp::timestamp as dw_insert_timestamp
from {{ ref('rugs_usa_links') }}