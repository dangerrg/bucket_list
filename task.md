Tasks 08. Unit Thinking about API usage

1. In the `photos/index.html.erb` view, change the static credit link "unsplash.com" so that the "unsplash.com" text links to the actual photo on the Unsplash website. Use the Unsplash documentation to determine what attribute on `Unsplash::Photo` will return this URL.
2. Change the usage of the `Unsplash::Photo.random` API call in `photos#index` so that it retrieves three photos instead of one. Iterate over all three of the returned images in the `photos/index.html.erb` view so that it's possible to select any of them for the Idea.
3. There is an HTML snippet of a form attached to the resources of this unit. Include this static form in the `photos/index.html.erb` view just above the `<ul>` containing the random images, inside the innermost `<div class="content-wrapper">`.
4. Alter the form so that it uses `form_tag` to submit a GET request back to  `idea_photos_path`. In the `photos#index` action, use the `query` form field as the `query` parameter for the Unsplash random images if it is not `nil` _or_ empty. Otherwise, use the Idea title. _There are several ways to achieve this. Try to use an approach that requires the smallest amount of code possible_.
5. Make sure that the value used for the `query` parameter in the  `Unsplash::Photo.random` call is displayed in the `query` form field from task 3.
