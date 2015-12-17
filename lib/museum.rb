module Museum
  require "active_record/railtie"
  require "action_controller/railtie"
  require "action_view/railtie"
  require "sprockets/railtie"

  require 'rails-i18n'
  require 'friendly_id'

  require 'museum/methods'
  require 'museum/configuration'
  require 'museum/railtie'
  require 'museum/engine'
  require 'museum/localization'
  require 'museum/version'

end