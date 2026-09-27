{% set apples = ["Gala", "Red Delicious", "Fuji", "McIntosh", "Honeycrisp"] %}

{%- for apple in apples -%}
    {% if apple == 'McIntosh' -%}
        {{ apple }} taste a bit weird?!
    {% elif apple == 'Honeycrisp' -%}
        {{ apple }} taste matches their price
    {% else -%}
        {{ apple }}
    {% endif -%}
{%- endfor -%}