class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :except => [:show]

  rescue_from CanCan::AccessDenied do |exception|
  flash[:error] = "Access denied."
  redirect_to root_url
  end

end
