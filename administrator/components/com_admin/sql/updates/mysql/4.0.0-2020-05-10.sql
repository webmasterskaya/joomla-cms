--
-- Move article page title from attribs to a separate field
-- !!! Need to rewrite for compatibility with MySQL 5.6
--
UPDATE `#__content`
SET `page_title` = `attribs` ->> '$.article_page_title'
WHERE `page_title` = ''
  AND `attribs` ->> '$.article_page_title' <> ''