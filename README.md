# Autocomplete with pg_search and select2

This demo shows how to build autocomplete functionality with [pg_search](https://github.com/Casecommons/pg_search)
and [select2](http://select2.github.io/). The main thing to note is that obviously pg_search
support **only Postgres**. However, this is the easiest and quickest to implement solution.

To view the demo:

* bundle install
* rails db:migrate
* rails db:seed (this will populate DB with totally random users)
* rails s
* Navigate to http://localhost:3000
* Enter a couple of characters
* Select any user
* Click Go and observe the user's id that was chosen (among some other params)

For this demo there is a `User` model with these attributes:

* fname
* lname
* domain

Searching is done against fname and lname.

## Main files

* select2.js and underscore.js inside javascripts - these are the libraries and have to be added
* search.coffee - this is the main JS file to enable autocomplete feature. DO NOT FORGET to require these files in your application.js.
Libraries should be required BEFORE the search.coffee
* Gems.