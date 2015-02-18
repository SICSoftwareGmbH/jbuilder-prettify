require 'jbuilder'
require 'jbuilder_prettify/railtie'

class Jbuilder
  class << self
    attr_accessor :prettify

    def prettify?
      return @prettify unless @prettify.nil?

      return ::Rails.configuration.jbuilder.prettify if defined?(::Rails)

      false
    end
  end

  alias_method :_original_target, :target!
  def target!
    ::Jbuilder.prettify? ? ::JSON.pretty_generate(@attributes) : _original_target
  end
end
