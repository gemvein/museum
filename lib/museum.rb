require 'rails/all'
require 'rails-i18n'
require 'haml-rails'
require 'friendly_id'

module Museum

  require 'museum/configuration'
  require 'museum/railtie'
  require 'museum/engine'
  require 'museum/localization'
  require 'museum/version'

end