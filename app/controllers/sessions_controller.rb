class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    session[:useri_id] = user.id
    redirect_to root_path, notice: 'ログインしました'
  end

  def destroy
    reset_session
    redirect_to root_path, notic: 'ログアウトしました'
  end
end
