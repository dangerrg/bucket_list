Tasks Unit 18. Testing helper methods

1. Define a method `#default_role!` in the User model class that will set the User's role to `'registered'`. Use this method as an `after_initialize` callback in the User model class so that any new Users are instantiated with the default `:role`.
2. Add a validation rule to the User class that ensures the value of the `:role` attribute is one of `'registered'` or `'admin'`.
3. Create a test class called RolesHelperTest for the RolesHelper in  `test/helpers/roles_helper_test.rb`. Make sure that the file requires `test_helper` at the top and that the RolesHelperTest inherits from ActionView::TestCase. Declare  `current_user` as an `attr_accessor` within the RolesTestHelper class.
4. Write a test case for the `can_edit?` method that does the following:
    1. Create a new User with the email address `owner@epfl.ch`. _The `:role` will default to `'registered'` because of the callback we added in task 1_.
    2. Assign the owner of the Idea to the `current_user`. _Don't forget to include `self.` to qualify the method name!_
    3. Create a new Idea that is owned by the User from 1.
    4. Assert that `can_edit?` returns true when passed the Idea in 2.
5. Write a test case for the `can_edit?` method that does the following:
    1. Create a new User with the email address `admin@epfl.ch` and the role `"admin"`.
    2. Assign the User to the `current_user`. _Don't forget to include `self.` to qualify the method name!_
    3. Create a new Idea that is not owned by the User in 1.
    4. Assert that `can_edit?` returns `true` when passed the Idea in 2.
6. Write a test case for the `can_edit?` method that does the following:
    1. Create a new User with the email address `other@epfl.ch`. _The `:role` will default to `'registered'` because of the callback we added in task 1_.
    2. Assign the User to the `current_user`. _Don't forget to include `self.` to qualify the method name!_
    3. Create a new Idea that is not owned by the User in 1.
    4. Assert that `can_edit?` returns `false` when passed the Idea in 2.