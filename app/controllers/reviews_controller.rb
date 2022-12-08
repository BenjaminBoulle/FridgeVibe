class ReviewsController < ApplicationController
  before_action :set_recipe, only: %i[new create]
  before_action :set_fridge, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.recipe = @recipe
    @review.user = current_user
    if @review.save
      redirect_to fridge_recipe_path(@fridge, @recipe, previous_page: true)
    else
      render :new
    end
  end

  # aaaaa

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@review.recipe), status: :see_other
  end

  private

  def set_fridge
    @fridge = Fridge.find(params[:fridge_id])
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
