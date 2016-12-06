require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsApp
  class Application < Rails::Application
  	config.i18n.available_locales = [:de, :en]
    config.time_zone = "Berlin"
    config.i18n.default_locale = :de
    #config.i18n.enforce_available_locales = false
	#config.i18n.available_locales = ["de_DE", :en]
	#config.i18n.default_locale = :'de_DE'
  end
end
