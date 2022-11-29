class FridgesController < ApplicationController
  def index
    @fridges = Fridge.where(user: current_user)
  end

  def show
    @fridge = Fridge.find(params[:id])
    @ingredients = Ingredient.where(fridge: @fridge)
  end
end
