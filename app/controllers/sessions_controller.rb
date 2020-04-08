class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      flash[:danger] = "Failed to login"
      # render :new
      redirect_to user_path(user.id)
    end
  end
end
