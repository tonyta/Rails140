require "action_controller/railtie"

module Rails140
  class Application < Rails::Application
    config.secret_key_base = "x"
  end
end

class HelloController < ActionController::Base
  def index
    render plain: "Hello! It's #{ Time.current }"
  end
end

Rails.application.initialize!

Rails.application.routes.draw do
  root to: "hello#index"
end
