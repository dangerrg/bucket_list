Tasks Unit 11. Adding translations

1. Delete all existing keys from the `config/locales/en.yml` file.
2. Add translation keys for all of the text items in the `_anonymous_user_header.html.erb` partial and replace the static text with references to these locale keys using the  `translate` helper method.
3. Add translation keys for all of the text items in the  `_authenticated_user_header.html.erb` partial and replace the static text with references to these locale keys using the `translate` helper method.
4. Add translation keys for all of the form fields in the `app/views/account/edit.html.erb` form to the `config/locales/en.yml` file.
5. Create the `config/locales/fr.yml` file for the French locale. Add the same keys as in the `en.yml` file from the previous tasks but use the French translations. If you only speak English, you can use a service like Google Translate to get approximate translations. Feel free to use another language if you prefer, using the correct two-character language abbreviation for the locale file, e.g. `de.yml` for German.
