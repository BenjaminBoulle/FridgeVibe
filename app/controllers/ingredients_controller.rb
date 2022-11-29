class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
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

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :expiration_date, :photo)
  end
end
