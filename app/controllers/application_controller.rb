class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  # from https://github.com/scottvrosenthal/twitter-bootswatch-rails
  layout 'united'
end
