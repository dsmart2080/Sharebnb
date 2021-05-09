# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version
Ruby 2.5.1
PosgreSQL version 0.18

* System dependencies

* Configuration

* Database creation
* $bundle exec rails db:create
* Database initialization
$bundle exec rails db:migrate
$bundle exec rails db:migrate:status
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
Run the web application using these commands:
0.) Make sure PostgreSQL is running in the background.
1.) Create the database using $bundle exec rails db:create
2.) Download the web application and access the root level of the project folder and
    run $bundle install
4.) Run the Rails server using $rails s.
5.) Go to localhost:3000/users on web browser to see web application in action.

