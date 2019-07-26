Tasks Unit 04. Building an asynchronous delete

1. Make sure that the JavaScript manifest file is included in the `<head>` of the application layout.
2. Implement the `ideas#destroy action`, using `#destroy!` to delete the Idea record from the DB. Ensure that only the owner of the Idea or an admin user is permitted to delete the Idea. _It's possible to make use of the load_idea action filter to retrieve the Idea that will be deleted._
3. Implement the "Delete" button in the` _editable_idea_card.html.erb` partial. Make the delete action submit asynchronously.
4. Add an ID attribute to the outermost element of the `_editable_idea_card.html.erb` partial. Format the ID `idea-<idea-id>`, where `<idea-id>` is the ID of the Idea being rendered.
5. Create a dynamic JavaScript file that will remove the card element, including parent `<li>` element, for the Idea that has just been deleted in `ideas#destroy`.