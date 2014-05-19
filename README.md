Museum
===========

[![Gem Version](https://badge.fury.io/rb/museum.svg)](http://badge.fury.io/rb/museum)
[![Build Status](https://travis-ci.org/gemvein/museum.svg)](https://travis-ci.org/gemvein/museum)
[![Coverage Status](https://coveralls.io/repos/gemvein/museum/badge.png)](https://coveralls.io/r/gemvein/museum)

For organizations that want to market a gem with the latest updates, Museum syncs your gems' data via arbitrary APIs so that your software marketing website stays up to date with the latest information about your gems.

Installation
----------------------------

First, add the gem to your Gemfile

    gem 'museum'

Next, run the following commands

    > bundle install
    > rails g museum:install
    > rake db:migrate

How you edit your database is up to you, but RailsAdmin is my favorite.

Contributing to Museum
----------------------------

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2014 Gem Vein. See LICENSE.txt for further details.

