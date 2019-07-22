Tasks Unit 13. Authorization with more action filters

1. Ensure that only the owner of an Idea is allowed to submit updates to the  `ideas#update` action.
2. Improve the performance of the `current_user` method by implementing a _lazy loading_ routine.
3. Improve the performance of the `ideas#edit` and `ideas#update` method by loading the Idea instance only once.
4. Extract a new method from the `ensure_owner` method that is specifically for loading the Idea record and assigning it to the instance variable `@idea`. Declare this method as a `before_action` filter that is executed _before_ `ensure_owner`.
5. Ensure that users are authenticated in order to access the `ideas#new` and  `ideas#create` actions.
6. In the CommentsController, use a `before_action` filter to ensure that the current user is authenticated. Make use of the `current_user` method instead of retrieving the User explicitly in this controller.
7. In the GoalsController, use a `before_action` filter to ensure that the
current user is authenticated. Also make sure that a goal can only ever be added to the goals collection of the currently logged in User.
