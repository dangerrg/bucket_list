Tasks Unit 04. Launching in production mode

Now try launching your own app in production mode. First, add `public/assets/*` to the  `.gitignore` file. This is so that no compiled assets accidentally get added to source control.

For steps 2-7, you can try running the start up script from task 1 and look at the errors produced either on the terminal or in the `log/production.log` file.

1. Create a script called `run-production.sh` and add  `rails server --environment production` as the first line.
2. Use `chmod +x` in the terminal to modify `run-production.sh` to make it executable.
3. Create a new secret key value using `rails secret` in the terminal.
4. Add export `SECRET_KEY_BASE=secret` at the top of `run-production.sh`, where secret is the value from 5.
5. Create a database for production mode using `RAILS_ENV=production rails db:setup`.
6. Pre-compile all assets using `RAILS_ENV=production rails assets:precompile`.
7. Allow the `public/` folder to be served in production mode by adding  `export` RAILS_SERVE_STATIC_FILES=true `to the top of` run-production.rb`.
