Tasks Unit 06. Creating lots of data

1. In the `db/seeds.rb` file, add expressions that will create one admin User and three registered Users. Give each User an `:email`, `:password` and `:name`.
2. In the `db/seeds.rb` file, add expressions that will create five Ideas for each User from task 1. Make sure that each Idea has a `:title`, although the titles can be whatever you choose. Try to set the `:photo_url` for some Ideas if you have adequate images.
3. In the `db/seeds.rb` file, add an expression that will add the first Idea for the three Users to the `:goals` for the admin User.
4. Run `rails db:setup` to clear the current development database and insert the new seed data. _If you want to make a backup of the database before running this command, simply copy `db/development.sqlite3` to somewhere safe._
