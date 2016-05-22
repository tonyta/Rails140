require "action_controller/railtie"

Class.new Rails::Application do
  config.secret_key_base = "x"
end

Rails.application.initialize!

run Rails.application
