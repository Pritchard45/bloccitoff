class UsersController < ApplicationController
  def show
    @user = current_user
    @name = @user.name
  end

  def after_sign_in_path_for(current_user)
    current_user
  end

end
