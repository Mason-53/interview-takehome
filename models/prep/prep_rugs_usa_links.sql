select
    base_url,
    page_links,
    card_links,
    replace(card_links,'https://www.rugsusa.com/','') as parent_url,
    substring(card_links from '/([^/]+)-P.html') AS p_id,
    request_time_stamp,
    dw_insert_timestamp
from {{ ref('stg_rugs_usa_links') }}