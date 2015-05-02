class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  #before_action :initialize_omniauth_state

  def root

  end

  protected

  #def initialize_omniauth_state
  #  session['omniauth.state'] = response.headers['X-CSRF-Token'] = form_authenticity_token
  #end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
