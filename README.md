# Private Events

This Rails app allow users' to create events and allows other user (The attendee) to attend those events. It is used as an exercise to practice with ActiveRecord Queries and ActiveRecord associations such as the many-to-many relationships between two models.

## Heroku

To view this app, click [here](https://blooming-ridge-40323.herokuapp.com/)

## Instructions (From Odin Project)

"You want to build a site similar to a private [Eventbrite](http://www.eventbrite.com/) which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

A user can create events. A user can attend many events. An event can be attended by many users. This will require you to model many-to-many relationships and also to be very conscious about your foreign keys and class names (hint: you won’t be able to just rely on Rails’ defaults like you have before)."

## To run this app locally

1. Fork this repository on Github.
1. Clone your forked repository onto your local computer.
1. Use `cd private-events` to move into the project folder.
1. Run `bundle install --without production` to install the required gems.
1. Run `rails db:migrate` to setup the database.
1. Run `rails server` to start the server
1. In your browser, navigate to [http://localhost:3000/](http://localhost:3000/)

## Development versions

* Ruby 2.6.1
* Rails 5.2.3

## Acknowledgement

Created as part of The Odin Project's [curriculum](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations?ref=lnav#project-2-private-events)
