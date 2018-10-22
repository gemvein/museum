# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: museum 0.5.8 ruby lib

Gem::Specification.new do |s|
  s.name = "museum".freeze
  s.version = "0.5.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Karen Lundgren".freeze]
  s.date = "2018-10-22"
  s.description = "For organizations that want to market a gem in style, Museum uses APIs to provide you with an ever-fresh marketing site for your gems.".freeze
  s.email = "karen.e.lundgren@gmail.com".freeze
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".coveralls.yml",
    ".rspec",
    ".ruby-gemset",
    ".ruby-version",
    ".travis.yml",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/museum/cases_controller.rb",
    "app/helpers/museum/cases_helper.rb",
    "app/models/museum/case.rb",
    "app/models/museum/case_detail.rb",
    "app/models/museum/loupe.rb",
    "app/views/application/404.html.haml",
    "app/views/museum/cases/_widget.html.haml",
    "app/views/museum/cases/index.html.haml",
    "app/views/museum/cases/show.html.haml",
    "config/locales/en.yml",
    "config/routes.rb",
    "db/migrate/20140516193656_create_museum_loupes.rb",
    "db/migrate/20140516193657_create_museum_case_details.rb",
    "db/migrate/20140516193658_create_museum_cases.rb",
    "lib/generators/museum/install/install_generator.rb",
    "lib/generators/museum/install/templates/initializer.rb",
    "lib/generators/museum/utils.rb",
    "lib/generators/museum/views/views_generator.rb",
    "lib/museum.rb",
    "lib/museum/configuration.rb",
    "lib/museum/engine.rb",
    "lib/museum/localization.rb",
    "lib/museum/methods.rb",
    "lib/museum/railtie.rb",
    "lib/museum/version.rb",
    "museum.gemspec",
    "spec/controllers/cases_controller_spec.rb",
    "spec/dummy/Rakefile",
    "spec/dummy/app/assets/stylesheets/application.scss",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/models/application_record.rb",
    "spec/dummy/app/views/layouts/application.html.haml",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/bin/setup",
    "spec/dummy/bin/update",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/cable.yml",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/application_controller_renderer.rb",
    "spec/dummy/config/initializers/assets.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/cookies_serializer.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/museum.rb",
    "spec/dummy/config/initializers/new_framework_defaults.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/puma.rb",
    "spec/dummy/config/routes.rb",
    "spec/dummy/config/secrets.yml",
    "spec/dummy/config/spring.rb",
    "spec/dummy/db/development.sqlite3",
    "spec/dummy/db/migrate/20140519231103_create_museum_loupes.museum.rb",
    "spec/dummy/db/migrate/20140519231104_create_museum_case_details.museum.rb",
    "spec/dummy/db/migrate/20140519231105_create_museum_cases.museum.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/seeds.rb",
    "spec/dummy/db/seeds/cases.seeds.rb",
    "spec/dummy/db/seeds/loupes.seeds.rb",
    "spec/dummy/db/test.sqlite3",
    "spec/dummy/lib/assets/.keep",
    "spec/dummy/lib/tasks/.keep",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/public/robots.txt",
    "spec/factories/case.rb",
    "spec/factories/loupe.rb",
    "spec/features/cases_spec.rb",
    "spec/helpers/cases_helper_spec.rb",
    "spec/models/case_detail_spec.rb",
    "spec/models/case_spec.rb",
    "spec/models/loupe_spec.rb",
    "spec/museum_spec.rb",
    "spec/rails_helper.rb",
    "spec/routing/engine_routes_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/case_support.rb",
    "spec/support/controller_behaviors.rb",
    "spec/support/loupe_support.rb"
  ]
  s.homepage = "http://www.gemvein.com/museum/cases/museum".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Rails 4 Engine for displaying information about a set of gems.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6", ">= 5.2.1"])
      s.add_runtime_dependency(%q<rails-i18n>.freeze, ["< 6", ">= 5.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 4.0"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, ["< 6", ">= 5.0"])
      s.add_runtime_dependency(%q<haml-rails>.freeze, ["< 2", ">= 1.0.0"])
      s.add_runtime_dependency(%q<friendly_id>.freeze, ["< 6", ">= 5.1"])
      s.add_runtime_dependency(%q<jeweler>.freeze, ["< 3", ">= 2.3"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["< 4", ">= 3.5"])
      s.add_development_dependency(%q<rails-controller-testing>.freeze, ["< 2", ">= 1"])
      s.add_development_dependency(%q<capybara>.freeze, ["< 4", ">= 3.9"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["< 2", ">= 1.2"])
      s.add_development_dependency(%q<database_cleaner>.freeze, ["< 2", ">= 1.5"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, ["< 5", ">= 4.5"])
      s.add_development_dependency(%q<coveralls>.freeze, ["< 1", ">= 0.8"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["< 2", ">= 1.3"])
      s.add_development_dependency(%q<seedbank>.freeze, ["< 1", ">= 0.3"])
      s.add_development_dependency(%q<rubocop>.freeze, ["< 1", ">= 0.58.2"])
      s.add_development_dependency(%q<rubocop-rspec>.freeze, ["< 2", ">= 1.3.0"])
    else
      s.add_dependency(%q<rails>.freeze, ["< 6", ">= 5.2.1"])
      s.add_dependency(%q<rails-i18n>.freeze, ["< 6", ">= 5.0"])
      s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 4.0"])
      s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 5.0"])
      s.add_dependency(%q<haml-rails>.freeze, ["< 2", ">= 1.0.0"])
      s.add_dependency(%q<friendly_id>.freeze, ["< 6", ">= 5.1"])
      s.add_dependency(%q<jeweler>.freeze, ["< 3", ">= 2.3"])
      s.add_dependency(%q<rspec-rails>.freeze, ["< 4", ">= 3.5"])
      s.add_dependency(%q<rails-controller-testing>.freeze, ["< 2", ">= 1"])
      s.add_dependency(%q<capybara>.freeze, ["< 4", ">= 3.9"])
      s.add_dependency(%q<rspec-its>.freeze, ["< 2", ">= 1.2"])
      s.add_dependency(%q<database_cleaner>.freeze, ["< 2", ">= 1.5"])
      s.add_dependency(%q<factory_bot_rails>.freeze, ["< 5", ">= 4.5"])
      s.add_dependency(%q<coveralls>.freeze, ["< 1", ">= 0.8"])
      s.add_dependency(%q<sqlite3>.freeze, ["< 2", ">= 1.3"])
      s.add_dependency(%q<seedbank>.freeze, ["< 1", ">= 0.3"])
      s.add_dependency(%q<rubocop>.freeze, ["< 1", ">= 0.58.2"])
      s.add_dependency(%q<rubocop-rspec>.freeze, ["< 2", ">= 1.3.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["< 6", ">= 5.2.1"])
    s.add_dependency(%q<rails-i18n>.freeze, ["< 6", ">= 5.0"])
    s.add_dependency(%q<jquery-rails>.freeze, ["< 5", ">= 4.0"])
    s.add_dependency(%q<sass-rails>.freeze, ["< 6", ">= 5.0"])
    s.add_dependency(%q<haml-rails>.freeze, ["< 2", ">= 1.0.0"])
    s.add_dependency(%q<friendly_id>.freeze, ["< 6", ">= 5.1"])
    s.add_dependency(%q<jeweler>.freeze, ["< 3", ">= 2.3"])
    s.add_dependency(%q<rspec-rails>.freeze, ["< 4", ">= 3.5"])
    s.add_dependency(%q<rails-controller-testing>.freeze, ["< 2", ">= 1"])
    s.add_dependency(%q<capybara>.freeze, ["< 4", ">= 3.9"])
    s.add_dependency(%q<rspec-its>.freeze, ["< 2", ">= 1.2"])
    s.add_dependency(%q<database_cleaner>.freeze, ["< 2", ">= 1.5"])
    s.add_dependency(%q<factory_bot_rails>.freeze, ["< 5", ">= 4.5"])
    s.add_dependency(%q<coveralls>.freeze, ["< 1", ">= 0.8"])
    s.add_dependency(%q<sqlite3>.freeze, ["< 2", ">= 1.3"])
    s.add_dependency(%q<seedbank>.freeze, ["< 1", ">= 0.3"])
    s.add_dependency(%q<rubocop>.freeze, ["< 1", ">= 0.58.2"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["< 2", ">= 1.3.0"])
  end
end

