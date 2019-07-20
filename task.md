Tasks Unit 18. Logging out

1. Restrict the `:sessions` resource to only map `:new`, `:create`, and `:destroy` actions.
2. Include the expression `<%= javascript_include_tag 'application' %>` within the `<head>` of the  `application.html.erb` file so that Rails includes the Javascript links in all views.
3. Implement a log out feature that will delete the currently logged in user's session and hook up the "Log out" link in the `_authenticated_user_header.html.erb` partial to trigger this action.