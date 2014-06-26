Summer of Rails
===============

## Getting started

### Clone the app
1. `cd Sites/` (or wherever you like to store projects locally)
2. `git clone git@github.com:mokolabs/summerofrails.git summerofrails`

### Configure the app and bundle install
1. Add Heroku remote: `heroku git:remote -a summerofrails`
2. Switch to Ruby 2.1.2 with the Ruby version manager of your choice (this
should happen automatically from the .ruby-version file)

### Launch the app
1. Run `bundle exec foreman start` to launch the app.
