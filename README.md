# README

* Ruby version: ruby-2.6.3

* Rails version: 5.2.4.4

* Setup:
  * Make sure you add Contentful access token and space to your env vars or to the [Contentful Initializer](https://github.com/taniadaniela/ms-contentful-api/blob/main/config/initializers/contentful.rb)
  * Make sure you add your database engine credentials to your env vars or to the [database.yml](https://github.com/taniadaniela/ms-contentful-api/blob/main/config/database.yml)

* Database: This app uses PostgreSQL db engine.

* Initialization: Once the setup config vars has been set
  * bundle install
  * rake db:create db:migrate
  * rails s  

  In your browser go to `http://localhost:3000/recipes` and see the results.

* Tests: The test suite used here is rspec, the model test ensures the ContentfulApi is used.  
Use `bundle exec rspec` command to execute the test suite.
  
*Notes*:
* not currently using DB but setting for testing purpose and future.