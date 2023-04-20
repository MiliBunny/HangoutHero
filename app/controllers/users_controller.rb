class UsersController < ApplicationController
    CUISINE = %i[Asian Indian American]

  def show
    @user = User.find(params[:id])

    @places = Place.where(cuisine: @user.cuisine, price: @user.price)
  end

end
