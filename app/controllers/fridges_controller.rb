class FridgesController < ApplicationController
  def index
    if current_user.fridges.empty?
      create(true)
      create(false)
    end
    @fridges = Fridge.where(user: current_user)
  end

  def new
    @fridge = Fridge.find(params[:recipe_id])
    @fridge = Fridge.new
  end

  def edit
    @fridges = Fridge.find(params[:id])
  end

  def create(my_fridge)
    @fridge = Fridge.new(user: current_user, my_fridge: my_fridge)
    @fridge.save
  end

  def show
    @fridge = Fridge.find(params[:id])
    @ingredients = Ingredient.where(fridge: @fridge).order(:expiration_date)
  end
end
