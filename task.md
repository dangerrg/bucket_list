Tasks Unit 09. Defining a custom helper method

1. Create the `app/views/account/_goal_card.html.erb` partial. Use the attached static HTML as a template and complete all of the dynamic text in the partial. Use a partial parameter, `goal`, for all of the dynamic fields but remember that this variable is an instance of an _Idea_. Look at  `application/_idea_card.html.erb` and `account/_editable_idea_card.html.erb` for reference to implement the partial.
2. Make use of the `_goal_card` partial within the `account/goals.html.erb` view to render all of a User's goals.
3. Create a helper method `can_edit?` within the ApplicationHelper that will take one parameter, `goal`, and return `true` or `false` depending on whether the goal belongs to the current user or not.
4. Make use of the `can_edit?` helper method within the `_goal_card` partial to conditionally display the "Edit" button.
