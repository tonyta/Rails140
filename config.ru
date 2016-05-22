require "action_controller/railtie"

module Rails140
  class Application < Rails::Application
    config.secret_key_base = "x"
  end
end

Rails.application.initialize!

run Rails.application
