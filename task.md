Tasks Unit 06. Setting up PostgreSQL

1. Install Postgres server on your development machine, and make sure that it is running as a background service.
2. Add the `pg` gem to the `Gemfile` as a production-only gem. Move the line that includes the `sqlite3` gem so that it is only included in the development and test groups.
3. Create a new role in the `postgres` database called `bucketlist`, with a password of your choice.
4. Change the `production` configuration in `config/database.yml` so that it uses the Postgres adapter instead of SQLite. Name the database `bucketlist`, ensure that the encoding is `unicode`, there is a pool of `5`, and use the credentials for the role created in 3.
5. Create the production database for the app in Postgres using the `db:setup` command in Rails, and delete the previous **production** SQLite database.
