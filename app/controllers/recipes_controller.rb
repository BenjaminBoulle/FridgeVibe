class RecipesController < ApplicationController
  def index
    score
    @recipes = verifying_recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path, status: :see_other
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients)
  end

  ##############################################################################

  # create an array with all the ingredients of a recipe

  def take_ingredients(recipe)
    recipe.ingredients.split(',')
  end

  # making an array of all the ingredients in the fridge and sorting them by expiration date

  def fridge_ingredients
    fridge = current_user.fridges.find_by(my_fridge: true)
    ingredients = []
    ingredients_sorted = fridge.ingredients.order(:expiration_date)
    ingredients_sorted.each do |ingredient|
      ingredients << ingredient.name
    end
    return ingredients
  end

  # method to check if all the ingredients are in the recipe

  def ingredients_in?(recipe)
    fridge_ingr = fridge_ingredients
    good_ingr = fridge_ingr & recipe
    return recipe.length == good_ingr.length
  end

  # verifying if all the ingredients for the recipe are in the fridge

  def verifying_recipe
    recipes = Recipe.all
    good_recipes = []
    recipes.each do |recipe|
      recipe_ingredients = take_ingredients(recipe)
      good_recipes << recipe if ingredients_in?(recipe_ingredients)
    end
    # good_recipes.each do |recipe|
    #   p recipe.name
    # end
    return good_recipes
  end

  # give a score to the ingredients

  def score
    fridge = current_user.fridges.find_by(my_fridge: true)
    fridge_ingr = fridge.ingredients.order(:expiration_date)
    p "scooooooooooooooore"
    p fridge_ingr
    fridge_ingr.each do |ingredient|
      p(ingredient.expiration_date.mjd - Date.today.mjd)
    end
  end
end
