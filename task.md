Tasks Unit 08. Paging the search results

1. Add the `kaminari` gem to the `Gemfile` and install it using `bundle install`. _Make sure that any running Rails server is restarted as well._
2. Set the results-per-page for the Ideas model to 9, using `paginates_per`.
3. Make sure that the `@ideas` result set can be paged in the `ideas#index` action, using the `.page` method and the :page parameter.
4. Include the pagination controls in the `app/views/ideas/index.html.erb` view using the `paginate` helper method.