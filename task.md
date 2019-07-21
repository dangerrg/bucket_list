Tasks Unit 05. Editing user details

1. Generate a migration that adds the `name` and `avatar_url` attributes as Strings to the User class.
2. Create a ``current_user`` method within the AccountController that returns the currently logged in User. Declare this method as a helper method.
3. Add two routes to the router. The first maps the route `/account` as a GET to the  `account#edit` action and the second maps the route `/account` as a PATCH to the  `account#update` action.
4. Add an `edit` action to the AccountController along with a matching `edit.html.erb` view.
5. Implement the edit account view using the HTML template attached to the resources in this unit. Pass `current_user` as the model instance to `form_for` for the form in order to populate the form with the attributes of the currently logged in User. _You'll need to pass `form_for` an explicit `:url` using a path helper because the routes we've defined don't represent a resource._
6. Add an `update` action to the AccountController and define a `user_params` strong parameters method that permits the `:email`, `:name`, and `:avatar_url` attributes to be submitted. Implement the update using the strong parameters in conjunction with `current_user` and redirect to the `account_path` once completed.