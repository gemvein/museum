begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end# encoding: utf-8

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "museum"
  gem.homepage = "http://www.gemvein.com/museum/cases/museum"
  gem.license = "MIT"
  gem.summary = %Q{Rails 4 Engine for displaying information about a set of gems.}
  gem.description = %Q{For organizations that want to market a gem in style, Museum uses APIs to provide you with an ever-fresh marketing site for your gems.}
  gem.email = "karen.e.lundgren@gmail.com"
  gem.authors = ["Karen Lundgren"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

# Bundler::GemHelper.install_tasks
namespace :museum do
  desc "Recreate database from seeds"
  task :clean do
    dummy_app_path = Museum::Engine.root.join('spec', 'dummy')
    system "bundle exec rake -f #{dummy_app_path.join('Rakefile')} db:drop db:create db:migrate db:seed db:test:prepare"
  end
end
