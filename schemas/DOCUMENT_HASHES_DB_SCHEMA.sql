CREATE TABLE IF NOT EXISTS "document_hashes" (
    "key" string not null,
    "language" string not null,
    "filename" string not null,
    "hash" string not null,
    "last_modified" DATETIME not null,
    "record_created" DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(key,language)
);