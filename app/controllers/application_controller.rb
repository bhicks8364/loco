class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #Makes cart available in views.
  helper_method :cart
  
  # Ensure cart session hash exists, if not, it creates a new one with its Value to a blank hash.
  
  def cart  
    session[:cart] ||= {}
  end

end
