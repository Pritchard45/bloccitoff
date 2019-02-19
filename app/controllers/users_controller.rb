class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
  end

  def user_proflie
    redirect_to current_user
  end

end
