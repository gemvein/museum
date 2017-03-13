# Museum

**Updated for Rails 5**

[![Gem Version](https://badge.fury.io/rb/museum.svg)](http://badge.fury.io/rb/museum)
[![Build Status](https://travis-ci.org/gemvein/museum.svg)](https://travis-ci.org/gemvein/museum)
[![Coverage Status](https://coveralls.io/repos/gemvein/museum/badge.png)](https://coveralls.io/r/gemvein/museum)

For organizations that want to market a gem with the latest updates, Museum syncs your gems' data via arbitrary APIs so that your software marketing website stays up to date with the latest information about your gems.

### Index Page
(http://gemvein.com/assets/screenshots/museum-cases-index.png)

### Show Page
(http://gemvein.com/assets/screenshots/museum-cases-show.png)

## Installation

First, add the gem to your Gemfile

    gem 'museum'

Next, run the following commands

    > bundle install
    > rails g museum:install
    > rake db:migrate

How you edit your database is up to you, but RailsAdmin is my favorite.

## See Museum in Action
[Gem Vein](http://www.gemvein.com) is a good example of a site whose information about software is kept fresh with Museum.

## What You Can Do

To copy the default views to your app directory:

    > rails g museum:views
    
### Cases

These are the gems whose information you wish to keep fresh.

Create some instances of `Museum::Case` with the `name` of the gem and optionally, a human-readable `title`.

    Museum::Case.new(
      name: 'bootswitch',
      title: 'Bootswitch'
    )
    Museum::Case.new(
      name: 'customizable_bootstrap',
      title: 'Customizable Bootstrap'
    )
    Museum::Case.new(
      name: 'bootstrap_leather',
      title: 'Bootstrap Leather'
    )

### Loupes

These are the APIs containing information about your gems.

    Museum::Loupe.new(
      title: 'RubyGems',
      uri_template: 'https://www.rubygems.org/api/v1/gems/%{name}.json',
      data_format: 'json'
    )
    Museum::Loupe.new(
      title: 'GitHub',
      uri_template: 'https://api.github.com/repos/%{user}/%{name}',
      data_format: 'json'
    )
    Museum::Loupe.new(
      title: 'GitHub README',
      uri_template: 'https://api.github.com/repos/%{user}/%{name}/readme',
      data_format: 'json'
    )
    
### Case Details
This is where Museum stores the data it retrieves with Loupes. To access them, try something like:

    # In your controller
    @case = Museum::Case.find_by!(name: 'bootswitch')
    
    # And then, in your view:
    @case.loupe('rubygems').detail('downloads')

## Contributing to Museum

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014-2017 Gem Vein. See LICENSE.txt for further details.

