Tasks 06. Implementing password
1. Add the `bcrypt` gem to the `Gemfile` and run `bin/bundle install` to download and install it.
2. Generate and run a migration that adds a new password_digest attribute as a String to the User model, and add the `has_secure_password` expression to the User model.
3. Add a password field to the `users/new.html.erb` view and include the `:password` attribute in the `:user` strong parameters definition in the UsersController. Don't forget to style the input in the same way as the other form inputs in the app!
4. Alter the `users#create` controller action so that it does not retrieve existing user records and only saves new records. Ensure that the new User to the instance variable `@user` not the local variable `user`.
5. Introduce a conditional on the result of `@user.save` that will set the `:user_id` key in the session Hash to `@user.id` and redirect to `ideas#index` if successful, and re-render the `users/new.html.erb` view if unsuccessful.
6. Add a validation rule to the User class that ensures that the email is unique.
7. Add an ERB fragment to `users/new.html.erb` that displays any errors contained in
the `@user` instance variable. This should work in the same way as the error
messages in `app/views/ideas/_form.html.erb`.