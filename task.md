Tasks Unit 06. Uploading in the front end

1. Save the `avatar.png` image attached to the resources in this unit in  `app/assets/images/`.
2. Add `public/uploads/*` as a line to the `.gitignore` file.
3. Add a `file_field` to the `app/views/account/edit.html.erb` view to allow User's to upload an avatar. Use the `:avatar` attribute to back this field. Make sure that the  `:avatar` attribute is a permitted field in the AccountController.
4. Use the image from task 1 as the default image in the AvatarUploader.
5. Display the `User#avatar` as an `<img>` element at the last child of the `<h1>` element in `app/views/account/edit.html.erb`.
