-- Q1: Return the name of the person with ID ‘person0’
select people_person_name from ourdb.parquetview('sf10_12.parquet') where people_person__id = 'person0'