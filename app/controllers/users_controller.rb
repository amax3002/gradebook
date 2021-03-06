class UsersController < ApplicationController
  layout "home"
  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    @user.generate_email
    @user.default_password
    session["message"] = "you signed up!"
    if @user.save
      session["current_user_id"] = @user.id
      redirect_to grades_path
    else
      render :new
    end
  end


  def user_params
    params.require(:user).permit(:email, :full_name, :password)
  end
end
