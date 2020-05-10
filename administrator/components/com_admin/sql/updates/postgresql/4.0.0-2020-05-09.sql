--
-- Add column for browser page title
--
ALTER TABLE "#__categories"
    ADD COLUMN "page_title" VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci';
ALTER TABLE "#__tags"
    ADD COLUMN "page_title" VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci';
ALTER TABLE "#__newsfeeds"
    ADD COLUMN "page_title" VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci';
ALTER TABLE "#__content"
    ADD COLUMN "page_title" VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci';
ALTER TABLE "#__contact_details"
    ADD COLUMN "page_title" VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci';

--
-- Convert metadata, metakey and metadesc columns from text to varchar, set NOT NULL and default value
--
UPDATE "#__contact_details"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__contact_details"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

UPDATE "#__contact_details"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE "#__contact_details"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '',
    ALTER COLUMN "metadata" TYPE VARCHAR(2048) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadata" SET NOT NULL,
    ALTER COLUMN "metadata" SET DEFAULT '';

UPDATE "#__content"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__content"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

UPDATE "#__content"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE "#__content"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '',
    ALTER COLUMN "metadata" TYPE VARCHAR(2048) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadata" SET NOT NULL,
    ALTER COLUMN "metadata" SET DEFAULT '';

UPDATE "#__newsfeeds"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__newsfeeds"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

UPDATE "#__newsfeeds"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE "#__newsfeeds"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '',
    ALTER COLUMN "metadata" TYPE VARCHAR(2048) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadata" SET NOT NULL,
    ALTER COLUMN "metadata" SET DEFAULT '';

UPDATE "#__tags"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__tags"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

UPDATE "#__tags"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE "#__tags"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '',
    ALTER COLUMN "metadata" TYPE VARCHAR(2048) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadata" SET NOT NULL,
    ALTER COLUMN "metadata" SET DEFAULT '';

UPDATE "#__banners"
SET "metakey" = ''
WHERE "metakey" IS NULL;

ALTER TABLE "#__banners"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '';

UPDATE "#__banner_clients"
SET "metakey" = ''
WHERE "metakey" IS NULL;

ALTER TABLE "#__banner_clients"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '';