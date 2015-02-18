require 'rails/railtie'
require 'active_support/ordered_options'

module JbuilderPrettify
  # Railtie for Jbuilder::Prettify
  class Railtie < Rails::Railtie
    config.jbuilder = ::ActiveSupport::OrderedOptions.new
    config.jbuilder.prettify = false
  end
end
