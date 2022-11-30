class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @fridge = Fridge.find(params[:fridge_id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.fridge = Fridge.find(params[:fridge_id])
    if @ingredient.save
      redirect_to fridge_path(@fridge)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to fridge_path(@fridge)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :expiration_date, :photo)
  end
end
