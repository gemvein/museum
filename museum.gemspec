# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: museum 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "museum"
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Karen Lundgren"]
  s.date = "2014-05-19"
  s.description = "For organizations that want to market a gem in style, Museum uses APIs to provide you with an ever-fresh marketing site for your gems."
  s.email = "karen.e.lundgren@gmail.com"
  s.executables = ["rails"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".coveralls.yml",
    ".document",
    ".rspec",
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
    "app/views/museum/cases/_widget.html.haml",
    "app/views/museum/cases/index.html.haml",
    "app/views/museum/cases/show.html.haml",
    "bin/rails",
    "config/locales/en.yml",
    "config/routes.rb",
    "coverage/.last_run.json",
    "coverage/.resultset.json",
    "db/migrate/20140516193656_create_museum_loupes.rb",
    "db/migrate/20140516193657_create_museum_case_details.rb",
    "db/migrate/20140516193658_create_museum_cases.rb",
    "db/seeds.rb",
    "db/seeds/museum_cases.yml",
    "db/seeds/museum_loupes.yml",
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
    "spec/dummy/.rspec",
    "spec/dummy/Rakefile",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/views/layouts/application.html.haml",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/bootstrap_leather.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/museum.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/routes.rb",
    "spec/dummy/coverage/.last_run.json",
    "spec/dummy/coverage/.resultset.json",
    "spec/dummy/db/development.sqlite3",
    "spec/dummy/db/migrate/20140519231103_create_museum_loupes.museum.rb",
    "spec/dummy/db/migrate/20140519231104_create_museum_case_details.museum.rb",
    "spec/dummy/db/migrate/20140519231105_create_museum_cases.museum.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/seeds.rb",
    "spec/dummy/db/test.sqlite3",
    "spec/dummy/lib/assets/.keep",
    "spec/dummy/lib/tasks/.keep",
    "spec/dummy/log/development.log",
    "spec/dummy/log/test.log",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/public/robots.txt",
    "spec/factories/case.rb",
    "spec/factories/loupe.rb",
    "spec/helpers/museum/cases_helper_spec.rb",
    "spec/models/case_detail_spec.rb",
    "spec/models/case_spec.rb",
    "spec/models/loupe_spec.rb",
    "spec/museum_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/case_support.rb",
    "spec/support/loupe_support.rb",
    "spec/views/museum/cases/index.html.haml_spec.rb",
    "spec/views/museum/cases/show.html.haml_spec.rb"
  ]
  s.homepage = "http://www.gemvein.com/museum/cases/museum"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Rails 4 Engine for displaying information about a set of gems."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.1"])
      s.add_runtime_dependency(%q<rails-i18n>, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap_leather>, [">= 0"])
      s.add_runtime_dependency(%q<friendly_id>, [">= 0"])
      s.add_runtime_dependency(%q<yaml_seeder>, [">= 0"])
      s.add_runtime_dependency(%q<museum>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 4.1"])
      s.add_dependency(%q<rails-i18n>, [">= 0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<bootstrap_leather>, [">= 0"])
      s.add_dependency(%q<friendly_id>, [">= 0"])
      s.add_dependency(%q<yaml_seeder>, [">= 0"])
      s.add_dependency(%q<museum>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.1"])
    s.add_dependency(%q<rails-i18n>, [">= 0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<bootstrap_leather>, [">= 0"])
    s.add_dependency(%q<friendly_id>, [">= 0"])
    s.add_dependency(%q<yaml_seeder>, [">= 0"])
    s.add_dependency(%q<museum>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end

