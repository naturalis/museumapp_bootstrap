CREATE TABLE IF NOT EXISTS "medialib_urls_new" (
    "unitid" string not null,
    "scientific_name" string not null,
    "url" string not null,
    UNIQUE(url)
);
CREATE TABLE IF NOT EXISTS "skipped_scientific_names_new" (
    "scientific_name" string not null,
    UNIQUE(scientific_name)
);
CREATE TABLE IF NOT EXISTS "squares_new" (
    "scientific_name" string not null,
    "url" string not null,
    "unitid" string not null,
    "square_coordinates" string not null,
    UNIQUE(scientific_name)
);
CREATE TABLE IF NOT EXISTS "user_select_new" (
    "scientific_name" string not null,
    "user" string not null,
    UNIQUE(scientific_name),
    UNIQUE(user)
);
CREATE TABLE IF NOT EXISTS "squared_images_new" (
    "scientific_name" string not null,
    "filename" string not null,
    UNIQUE(scientific_name)
);