SELECT author, count(title)
FROM (select title, unnest(author) as author from 'dblp.parquet')
GROUP BY author