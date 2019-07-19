Tasks Unit 14. Using callbacks for unique emails

1. Ensure that the email attribute of the User model is always lowercase before being validated.
2. Ensure that the email field submitted in the log in form is always lowercased before being used in the #authenticate method.
3. Add a model test to `test/models/user_test.rb` that
    1. Creates a new User instance with the email address `'nEw@EpFl.Ch'`.
    2. Calls `#valid?` on the User instance.
    3. Asserts that the `:email` attribute for the User is `'new@epfl.ch'`.
