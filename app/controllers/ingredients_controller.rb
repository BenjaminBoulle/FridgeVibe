require "open-uri"
class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    @fridge = Fridge.find(params[:fridge_id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.fridge = Fridge.find(params[:fridge_id])
    @fridge = @ingredient.fridge
    if @ingredient.save
      if @ingredient.photo.attached? == false
        @ingredient.photo.attach(io: URI.open("https://res.cloudinary.com/dlvtxz1vv/image/upload/v1669818876/pict-dinner_q1pwkw.png"), filename: "pict-dinner.png", content_type: "image/png")
      end
      redirect_to fridge_path(@ingredient.fridge)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @fridge = Fridge.find(params[:fridge_id])
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to fridge_path(@ingredient.fridge)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :expiration_date, :quantity, :photo)
  end
end
