class FridgesController < ApplicationController
  def index
    @fridges = Fridge.where(user: current_user)
  end

  def new
    @fridge = Fridge.find(params[:recipe_id])
    @fridge = Fridge.new
  end

  def edit
    @fridges = Fridge.find(params[:id])
  end

  def create
    @fridge = Fridge.new(fridge_params)
    @fridge.save
    redirect_to fridge_path(@fridge)
  end

  def show
    @fridge = Fridge.find(params[:id])
    @ingredients = Ingredient.where(fridge: @fridge).order(:expiration_date)
  end
end
