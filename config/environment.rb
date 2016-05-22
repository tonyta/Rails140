ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
require 'bundler/setup' # Set up gems listed in the Gemfile.

require "action_controller/railtie"

Bundler.require(*Rails.groups)

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
