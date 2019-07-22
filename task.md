Tasks Unit 16. Keeping authorization rules tidy

1. Add a `:role` attribute as a String to the User model. Make sure that all existing Users in the database have the default role, `'registered'`, using `update_all` in the rails console.
2. Alter the `can_edit?` method in the ApplicationHelper so that it returns `true` if the  `User#role` is `'admin'`, `true` if the `User#role` is `'registered'` and the `current_user` owns the requested Idea, and false in all other cases. A `case` statement is useful here.
3. Alter the `ensure_owner` method so that users with the `'admin'` role are able to edit any Idea regardless of who owns it.
4. Create a module called RolesHelper in `app/helpers/roles_helper.rb` and move the  `can_edit?` method from ApplicationHelper to this new module.
5. Include the Roles module in the IdeasController and make use of  `RolesHelper#can_edit?` in the `IdeasController#ensure_owner` method to indicate whether the current user has permission to edit the requested Idea or not.
Rename the `ensure_owner` method to `authorize_to_edit_idea`. _Don't forget to change the references to `ensure_owner` as well!_