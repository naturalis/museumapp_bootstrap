CREATE TABLE IF NOT EXISTS natuurwijzer_dekking (
    taxon string(100) not null,
    links text
);
CREATE TABLE IF NOT EXISTS ttik_content_dekking (
    taxon string(100) not null,
    status string(32)
);
CREATE TABLE IF NOT EXISTS taxa_per_room (
    room string(100) not null,
    taxon_count integer,
    with_image integer,
    with_description integer,
    with_image_and_description integer
);
CREATE TABLE IF NOT EXISTS taxa_overall (
    taxon_count integer,
    with_image integer,
    with_description integer,
    with_image_and_description integer
);
CREATE TABLE IF NOT EXISTS events (
    event varchar(32) not null primary key,
    event_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);
