Tasks Unit 11. Securing owned resources

1. Pull up the `current_user` method from the AccountController to the ApplicationController along with the `helper_method` declaration.
2. Pull up the `ensure_authenticated` method from AccountController to the ApplicationController.
3. Add a `before_action` filter that calls `ensure_authenticated` for the edit action only within IdeasController. _This needs to be put in place before the next task because users must be authenticated before in order to edit an Idea_.
4. Define a method, `ensure_owner`, in IdeasController that will redirect the user to the  `account_path` if they are not the owner of the Idea. Make use of the `return` keyword as in the example in this unit.
5. Use a `before_action` filter to call `ensure_owner`. Restrict this filter to only apply to the `ideas#edit` action and no other actions. _This filter must be be declared after the  `ensure_authenticated` action filter from task 3_.