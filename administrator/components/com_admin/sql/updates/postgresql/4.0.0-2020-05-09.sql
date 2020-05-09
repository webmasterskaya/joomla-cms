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
-- Convert metakey and metadesc columns from text to varchar(1024)
--
UPDATE "#__contact_details"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__contact_details"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

ALTER TABLE "#__contact_details"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '';

UPDATE "#__content"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__content"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

ALTER TABLE "#__content"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '';
UPDATE "#__newsfeeds"
SET "metakey" = ''
WHERE "metakey" IS NULL;

UPDATE "#__newsfeeds"
SET "metadesc" = ''
WHERE "metadesc" IS NULL;

ALTER TABLE "#__newsfeeds"
    ALTER COLUMN "metakey" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metakey" SET NOT NULL,
    ALTER COLUMN "metakey" SET DEFAULT '',
    ALTER COLUMN "metadesc" TYPE VARCHAR(1024) COLLATE 'utf8mb4_unicode_ci',
    ALTER COLUMN "metadesc" SET NOT NULL,
    ALTER COLUMN "metadesc" SET DEFAULT '';