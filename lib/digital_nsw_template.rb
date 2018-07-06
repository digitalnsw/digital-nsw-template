require 'digital_nsw_template/version'
require 'bootstrap'

module DigitalNswTemplate
  # Based on similar code used to load the Bootstrap gem
  # https://github.com/twbs/bootstrap-rubygem/blob/v4.1.1/lib/bootstrap.rb
  #
  class << self
    def load!
      if rails?
        register_rails_engine
      elsif sprockets?
        register_sprockets
      end

      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def images_path
      File.join assets_path, 'images'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      raise 'TODO'
      # require 'bootstrap/engine'
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
      Sprockets.append_path(images_path)
    end
  end
end

DigitalNswTemplate.load!
