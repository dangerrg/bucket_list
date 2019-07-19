Tasks Unit 16. A customized menu

1. There is a static HTML file called `authenticated-user.html` attached in the resources section of this unit. Create a partial called `_authenticated_user_header.html.erb` within `app/views/application/` and copy the static HTML into the  `_authenticated_user_header.html.erb` partial.
2. There is another static HTML file called `anonymous-user.html` attached in the resources section of this unit. Create a partial called `_anonymous_user_header.html.erb` within `app/views/application/` and copy this static HTML into the  `_anonymous_user_header.html.erb` partial.
3. Define a public method called `logged_in?` within the ApplicationController. This will indicate whether a user is currently authenticated or not. Make this method available as a helper method in views.
4. Replace the existing header in the `application.html.erb` layout file with a conditional expression that uses `logged_in?` to determine which header partial to display.
5. Create two new explicit routes, `login` and `signup`, with in the router that map to  `users#new` and `sessions#new` respectively.
6. Make use of path helpers to complete the "Log in" and "Sign up" links in  `_anonymous_user_header.html.erb`.
7. Make use of the `account_ideas_path` path helper to complete the "My Ideas" link in  `_authenticated_user_header.html.erb`.
