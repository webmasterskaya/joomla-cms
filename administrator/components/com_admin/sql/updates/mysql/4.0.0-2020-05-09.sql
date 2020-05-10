--
-- Add column for browser page title
--
ALTER TABLE `#__categories`
    ADD COLUMN `page_title` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT 'Browser page title' COLLATE 'utf8mb4_unicode_ci' AFTER `params`;
ALTER TABLE `#__tags`
    ADD COLUMN `page_title` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT 'Browser page title' COLLATE 'utf8mb4_unicode_ci' AFTER `params`;
ALTER TABLE `#__newsfeeds`
    ADD COLUMN `page_title` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT 'Browser page title' COLLATE 'utf8mb4_unicode_ci' AFTER `metakey`;
ALTER TABLE `#__content`
    ADD COLUMN `page_title` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT 'Browser page title' COLLATE 'utf8mb4_unicode_ci' AFTER `metakey`;
ALTER TABLE `#__contact_details`
    ADD COLUMN `page_title` VARCHAR(1024) NOT NULL DEFAULT '' COMMENT 'Browser page title' COLLATE 'utf8mb4_unicode_ci' AFTER `metakey`;

--
-- Convert metadata, metakey and metadesc columns from text to varchar, set NOT NULL and default value
--
UPDATE `#__contact_details`
SET `metakey` = ''
WHERE `metakey` IS NULL;

UPDATE `#__contact_details`
SET `metadesc` = ''
WHERE `metadesc` IS NULL;

UPDATE "#__contact_details"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE `#__contact_details`
    MODIFY `metakey` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `modified_by`,
    MODIFY `metadesc` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`,
    MODIFY `metadata` VARCHAR(2048) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`;

UPDATE `#__content`
SET `metakey` = ''
WHERE `metakey` IS NULL;

UPDATE `#__content`
SET `metadesc` = ''
WHERE `metadesc` IS NULL;

UPDATE "#__content"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE `#__content`
    MODIFY `metakey` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `ordering`,
    MODIFY `metadesc` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`,
    MODIFY `metadata` VARCHAR(2048) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`;

UPDATE `#__newsfeeds`
SET `metakey` = ''
WHERE `metakey` IS NULL;

UPDATE `#__newsfeeds`
SET `metadesc` = ''
WHERE `metadesc` IS NULL;

UPDATE "#__newsfeeds"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE `#__newsfeeds`
    MODIFY `metakey` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `modified_by`,
    MODIFY `metadesc` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`,
    MODIFY `metadata` VARCHAR(2048) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`;

UPDATE `#__tags`
SET `metakey` = ''
WHERE `metakey` IS NULL;

UPDATE `#__tags`
SET `metadesc` = ''
WHERE `metadesc` IS NULL;

UPDATE "#__tags"
SET "metadata" = ''
WHERE "metadata" IS NULL;

ALTER TABLE `#__tags`
    MODIFY `metakey` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `modified_by`,
    MODIFY `metadesc` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`,
    MODIFY `metadata` VARCHAR(2048) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci' AFTER `page_title`;