Tasks Unit 08. Add goals from the Idea card

1. Make use of the `current_user` and `logged_in?` helper methods in  `app/views/ideas/show.html.erb` to replace the usages of `@user`.
2. Make use of the current_user and logged_in? helper methods in `show` action in the IdeasController to remove the `@user` assignment and usages.
3. Replace the static `Add Goal` button in `app/views/application/_idea_card.html.erb` with the `form_tag` helper. The form should submit to the `user_goals_path` and include the Idea ID as a hidden field. Make sure that the button _does not_ get rendered for anonymous users.