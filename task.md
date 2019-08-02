Tasks Unit 06. Selecting a random photo for Ideas

1. Add the `unsplash` gem to the My Bucket List app and configure it with your  `application_id` and `utm_source` of `exts-fullstack`.
2. Add `:photos` as a nested resource of `:ideas`, generate the PhotosController, and add `index` and `create` actions. Create an empty `photos/index.html.erb` view.
3. Implement action filters to make sure all actions in the PhotosController do the following.
    1. Ensure the user is authenticated.
    2. Load the associated Idea using the `:idea_id` parameter from the `params` Hash.
    3. Ensure that the User is either the Idea owner or an admin, redirecting to  `account_path` if not authorized.
4. In the `photos#index` action, retrieve one random photo from the Unsplash API using the Idea title as the `query` parameter. Assign this photo instance to an instance variable `@photo`.
5. Implement the `photos/index.html.erb` view using the HTML attached to resources section of this unit. Make use the `@photo` instance to set the image `src`, the form  `photo_url` hidden input value, and the photographer's name. Make the form submit to `idea_photos_path` (Remember that this path helper is for a nested resource, and therefore it requires the associated Idea as a parameter)
6. Implement the `photos#create` action to set the `:photo_url` of the Idea using the value of `:photo_url` submitted in the form. It should redirect back to  `edit_idea_path` after the update.
7. Complete the sub-nav in the `photos/index.html.erb` view so that `"Idea"` links to the  `edit_idea_path` for the current Idea. Duplicate the navigation in the  `ideas/edit.html.erb` view and make the `Photos` item link to the `idea_photos_path` for that Idea.
