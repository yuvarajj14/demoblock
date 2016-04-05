class UsersController < ApplicationController
  before_filter :authenticate_user!
  def edit_password
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password(user_password_params)
      sign_in @user, :bypass => true
      redirect_to root_path, :notice => "Your password changed"
    else
      render "edit_password"
    end
  end

  private
  def user_password_params
    params.require(:user).permit(:current_password, :password, :password_confirmation)
  end
end
