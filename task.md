Tasks Unit 08. More on image uploads

1. Generate a migration that will remove the `avatar_url` column from the `users` table in the database.
2. Remove all references to `:avatar_url` in controller strong parameters.
3. Remove all form fields for the `:avatar_url` attribute.
4. Use `user.avatar_url` to render the avatar URI instead of `user.avatar` in  `app/views/account/edit.html.erb`.
