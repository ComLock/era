class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    auth = request.env['omniauth.auth']
    #ap auth
    user = User.from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out!'
  end
end
