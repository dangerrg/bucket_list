Tasks Unit 07. Listing a user's goals

1. Create the `/account/goals` route, `account#goals` controller action, and empty  `account/goals.html.erb` view for the My Goals section. The `account#goals` action should assign the current user's goals to an instance variable, `@goals`. Make sure that the `account#goals` action is authenticated before it is executed.
2. Copy the content of `ideas/index.html.erb` into the `account/goals.html.erb` view to get a starting point for the My goals view and make the following changes in the new `account/goals.html.erb` view:
    1. Replace the `"Results for ..."` text with the title `My goals`.
    2. Replace the No ideas found! text with the text  `You don't currently have any goals..`
    3. Replace the usages of `@ideas` with the `@goals` instance variable.
    4. Remove the `<%= render ... %>` expression; we'll be building the partial for this in the next unit.
3. Use the `account#goals` route as the link for `My goals` in the sub nav on the  `account/edit.html.erb` view.
4. Copy the sub-navigation from the `account/edit.html.erb` view into the
`account/goals.html.erb` view. Adjust the item that has the `current` CSS class so
that "Goals" is highlighted instead of "Account" and that the "Account" link
links back to the `account#edi`t route. _It's possible to extract a partial for the
account sub-nav, however it is more complex to implement than it first seems. If
you're feeling confident, have a think about how to do this so that the current
item can be selected in the partial._
