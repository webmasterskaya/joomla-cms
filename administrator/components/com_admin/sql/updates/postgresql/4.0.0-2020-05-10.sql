--
-- Move article page title from attribs to a separate field
--
UPDATE "#__content"
SET "page_title" = "attribs" ->> 'article_page_title'
WHERE "page_title" = ''
  AND "attribs" ->> 'article_page_title' <> ''