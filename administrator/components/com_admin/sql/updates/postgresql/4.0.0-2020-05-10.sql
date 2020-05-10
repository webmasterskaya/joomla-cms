--
-- Move article page title from attribs to a separate field
--
UPDATE "#__content"
SET "browser_title" = "attribs" ->> 'article_page_title'
WHERE "browser_title" = ''
  AND "attribs" ->> 'article_page_title' <> ''