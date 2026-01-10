CREATE TABLE sub_config (
    id SERIAL PRIMARY KEY,

    contact_id INTEGER NOT NULL,
    indicator_code TEXT NOT NULL,

    number_of_periods INTEGER NOT NULL,
    filters TEXT[] NOT NULL,

    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),

    CONSTRAINT unique_sub_indicator
        UNIQUE (contact_id, indicator_code)
);