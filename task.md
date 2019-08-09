Tasks Unit 13. Selecting a language

1. Ensure that the locale is included in all path helpers as a default parameter. _We do this first because some of our path helpers will break in task 2 without the locale included by default_.
2. Define a scope in `config/routes.rb` that contains all routes defined in the router. Define the scope as a single parameter template, `:locale`. _The application root, `/`, no longer works after this change; determine how to fix the router so that the root path works again_.
3. Add a `before_action` filter that will set the `I18n.locale` for every controller action.
4 Add links to the footer of the `app/views/layouts/application.hmtl.erb` layout that will allow a User to change the locale for the current page that they are on.
