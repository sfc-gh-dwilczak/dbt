with 

source as (

    select * from {{ source('tasty_bytes', 'franchise') }}

),

renamed as (

    select
        franchise_id,
        first_name,
        last_name,
        city,
        country,
        e_mail,
        phone_number

    from source

)

select * from renamed
