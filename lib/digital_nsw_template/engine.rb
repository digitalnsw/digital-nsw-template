require 'autoprefixer-rails'

module DigitalNswTemplate
  module Rails
    class Engine < ::Rails::Engine
      initializer 'digital_nsw_template.assets' do |app|
        %w(images stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
