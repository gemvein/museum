require 'rails/all'
require 'rails-i18n'
require 'haml-rails'
require 'friendly_id'
require 'yaml_seeder'

module Museum

  require 'museum/configuration'
  require 'museum/railtie'
  require 'museum/engine'
  require 'museum/localization'
  require 'museum/version'

end