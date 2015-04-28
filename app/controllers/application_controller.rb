class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  
  def forem_user
    current_user
  end
  helper_method :forem_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_path, :alert => exception.message
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
