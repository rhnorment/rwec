require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rwec

  class Application < Rails::Application

    console do
      ActiveRecord::Base.connection
    end

    config.autoload_paths += %W(#{config.root}/lib)

    config.exceptions_app = self.routes

    config.nav_lynx.selected_class = 'active'

  end

end
