require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails140
  class Application < Rails::Application
    config.secret_key_base = "x"
  end
end

class HelloController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    render plain: "Hello! It's #{ Time.current }"
  end
end
