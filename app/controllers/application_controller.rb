class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  
  def after_sign_in_path_for(resource)
    events_path
  end
  
  def forem_user
    current_user
  end
  
  helper_method :forem_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.pages_home_url, :alert => exception.message
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
