class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "Profile was successfully created"
      redirect_to '/posts'
    else
      flash[:notice] = "That user name has already been taken!"
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
