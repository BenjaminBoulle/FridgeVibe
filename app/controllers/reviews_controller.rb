class ReviewsController < ApplicationController
  before_action :set_recipe, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.recipe = @recipe
    @review.user = current_user
    @review.save
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@review.recipe), status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
