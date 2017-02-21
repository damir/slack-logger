module SlackLogger
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "Create a SlackLogger initializer"

    def copy_initializer
      template 'slack-logger.rb', 'config/initializers/slack-logger.rb'
    end

  end
end