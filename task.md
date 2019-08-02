Tasks Unit 05. Using an API in Ruby

1. Register as a user and as a developer at https://unsplash.com.
2. Register an application called `"Bucket List"` in the Unsplash developer dashboard.
3. Practice using the `/photos/random` endpoint in the browser. Don't forget to include the application ID as the `client_id` query string parameter!
4. Install the `unsplash` gem and load the gem in an IRB session.
5. Within the IRB session:
    1. Configure the `unsplash` gem with your application ID and also a `utm_source` of  `'exts-fullstack'`.
    2. Practise using the Unsplash::Photos class to return a random photo and to search for photos matching a search term. See how to access the different photo URLs and the photographer details in the objects that are returned by the `.random` and `.search` methods.
