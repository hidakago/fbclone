class SessionsController < ApplicationController
  def new
    redirect_to new_user_path
  end
end
