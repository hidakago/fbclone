class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to user_path(current_user.id)
    else
      redirect_to new_user_path
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash[:danger] = 'ログインに失敗しました'
      redirect_to new_user_path
    end
  end
end
