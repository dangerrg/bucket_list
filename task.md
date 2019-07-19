Tasks 08. Log in
1. Generate a new controller, `sessions`, and an associated resource, `:sessions`, in the router. Restrict the resource to only mapping the `:new` and :`create` actions.
2. Add a `new` action in the SessionsController and add the associated  `sessions/new.html.erb` view.
3. Copy the form for `users/new.html.erb` into this new view. Make use of `form_tag` instead of `form_for` to submit the form to `sessions_path`. Also remove the section that handles error messages and correct any text in the view to display "Log in" not "Sign up".
4. Add a `create` action in the SessionsController that will authenticate the credentials submitted by the `sessions/new.html.erb` view. The action will
  * set an `:alert` flash message, re-render the `new.html.erb` view, and set `@user` to a new User instance if no matching User is found.
  * set an `:alert` flash message and re-render the `new.html.erb` view if authentication is unsuccessful.
  * set the `:user_id` key in the `session` Hash and redirect to `account_ideas_path` if a user is found and authentication is successful.
5. There is an HTML file included in the resources called `flash-message.html`. This contains an HTML fragment to display flash messages. Use this static HTML block to display any flash messages on the login view created in task 2. The HTML block includes comments to indicate what should be rendered per message. Make sure that the block is not displayed if there are not any flash messages. Also, make sure that the `name` part of the flash is included as a CSS class so that the color of the message is correct (e.g. red for an alert)
6. There is a Sass file included in the resources called `_flashes.scss`. Add this
file to the other Sass stylesheets included in the app and include it in the
Sass application manifest file.
