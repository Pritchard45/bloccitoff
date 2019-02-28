class UsersController < ApplicationController
  def show
    @user = current_user
    @name = @user.name
  end

  
end
