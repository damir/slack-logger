require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "slack-logger"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.after_initialize do
      config.logger.extend ActiveSupport::Logger.broadcast(SlackLogger::Logger.new(SlackLogger::SlackIO))
    end

  end
end

