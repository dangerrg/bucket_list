Tasks Unit 06. An asynchronous form

1. Make the comment form in `app/views/ideas/show.html.erb` submit asynchronously using `remote: true`. Also add the unique id attribute `commentList` to the `<ul>` element that contains the comments.
2. Update the `comments#create` controller action so that it assigns the new Comment to an instance variable `@comment`. Make sure that the action renders the default view rather than redirecting to idea_path.
3. Create the file `app/views/comments/create.js.erb`. Use the JavaScript example from this unit as the contents.
4. Update the `comments/create.js.erb` view so that the value of `@comment.body` is used as the text in `commentParagraph`.
5. Update the `comments/create.js.erb` view so that the value of `@comment.user.name` is used as the text in `commentHeader`.
6. Update the `comments/create.js.erb` view so that the value of `@comment.created_at` is used as the text in `commentTime`. Use Rails' `time_ago_in_words` helper method to output reader-friendly text for the time that the Comment was created. _The  `datetime` attribute of `commentTime` doesn't need to be set as part of this task but do that too if you feel confident._