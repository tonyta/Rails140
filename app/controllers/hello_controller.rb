class HelloController < ApplicationController
  def index
    render plain: "Hello! It's #{ Time.current }"
  end
end
