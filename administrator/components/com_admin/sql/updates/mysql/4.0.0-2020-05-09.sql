/* Add column for browser page title */
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