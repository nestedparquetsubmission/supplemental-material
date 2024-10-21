-- Q1: Return the name of the person with ID ‘person0’
select "people.person.list.element.name" from ourdb.parquetview('sf10.parquet') where "people.person.list.element._id" = 'person0'