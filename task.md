Tasks Unit 02. Creating scopes

1. Replace the `.most_recent` class method with a scope called `most_recent` that behaves in the same way. Run the model unit tests to ensure that this change is a _refactoring_ and does not change the behavior of the Idea model.
2. Define a new scope called `title_contains` that accepts one parameter, term. The scope will return all Ideas that have a `:title` containing the `term` parameter anywhere.
3. Define a new scope called `description_contains` that accepts one parameter, `term`. The scope will return all Ideas that have a `:description` containing the `term` parameter anywhere.
