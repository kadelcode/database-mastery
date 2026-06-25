# docker exec -i pg-mastery psql -U admin -d mastery < ./practice/schemas/what-is-a-database.sql
# docker exec -i pg-mastery psql -U admin -d mastery < ./practice/seed/what-is-a-database.sql

docker exec -i pg-mastery psql -U admin -d mastery < ./practice/postgres/schemas/003-data-models.sql
docker exec -i pg-mastery psql -U admin -d mastery < ./practice/postgres/seed/003-data-models.sql