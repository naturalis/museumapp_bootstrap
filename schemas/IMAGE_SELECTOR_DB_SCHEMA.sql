CREATE TABLE IF NOT EXISTS "medialib_urls" (
    "unitid" string not null,
    "url" string not null,
    UNIQUE(unitid,url)
);
CREATE TABLE IF NOT EXISTS "selected_urls" (
    "unitid" string not null,
    "urls" string not null,
    "excluded_urls" string not null
);
CREATE TABLE IF NOT EXISTS "skipped_unitids" (
    "unitid" string not null,
    UNIQUE(unitid)
);
CREATE TABLE IF NOT EXISTS "user_select" (
    "unitid" string not null,
    "user" string not null,
    UNIQUE(unitid),
    UNIQUE(user)
);
