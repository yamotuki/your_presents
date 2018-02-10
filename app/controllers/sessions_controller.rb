class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth(auth_hash)
    flash[:notice] = "#{@user.nickname}でログインしました"
    redirect_to '/'
  end

  protected def auth_hash
    request.env['omniauth.auth']
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
