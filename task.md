Tasks 10. Fixing the broken tests

1. Correct the `'sign up creates a User'` system test so that it fills in a password and clicks on the "Sign In" form button.
2. Correct the `'editing an Idea'` test so that the User is created with a `:password` as well as an `:email`.
3. Several system tests create a user and then log in, which are currently broken.
Correct these tests so that new User records are created with a password and the
password is used in the log in form. Ensure that the tests visit the
`new_session_path` and _not_ the `new_user_path`. _Use `'password'` as the value for the
`:password` attribute._
