class WelcomeController < ApplicationController
  def index
    session[:visits] = (session[:visits] || 0) + 1
    render plain: "ruby-secret-key-base visits=#{session[:visits]}\n"
  end
end
