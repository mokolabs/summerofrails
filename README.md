Summer of Rails
===============

## Getting started

### Clone the app
1. `cd Sites/` (or wherever you like to store projects locally)
2. `git clone git@github.com:mokolabs/summerofrails.git summerofrails`

### Configure the app and bundle install
1. Switch to Ruby 2.2.2 with the Ruby version manager of your choice (this
should happen automatically from the `.ruby-version` file)
2. `bundle install`

### Launch the app
1. Run `bundle exec foreman start` to launch the app.

## Deploy the app
The app is hosted on a dokku-managed droplet on Digital Ocean.

1. `git remote add droplet dokku@droplet.mokolabs.com:summerofrails` to add droplet remote
2. `git push droplet master` to deploy the changes
