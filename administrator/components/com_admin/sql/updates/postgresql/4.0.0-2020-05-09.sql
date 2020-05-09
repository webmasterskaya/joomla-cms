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
