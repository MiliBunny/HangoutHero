class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @places = Place.where(cuisine: @user.cuisine, price: @user.price)
  end

end
