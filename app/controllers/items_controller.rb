class ItemsController < ApplicationController
  # create an item
  def create
      @item = current_user.items.build(item_params)

      if @item.save
        flash[:success] = "Task successfully saved."
        redirect_to current_user
      else
        flash[:alert] = "There was an error saving your task."
        redirect_to :back
    end
  end

  # destroy an item
  def destroy
      @item = Item.find(params[:id])

      if @item.user == current_user
        @item.destroy
    end

    respond_to do |format|
      format.html
      format.js

    redirect_to current_user
    flash[:success] = "Task was completed! You are the task master!"
    end
  end



  private
  def item_params
    params.require(:item).permit(:name)
  end
end
