class RecipesController < ApplicationController
  def index
    puts order_recipes
    @recipes = order_recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients.split(',')
    @fridge = fridge
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
      redirect_to recipes_path
    else
      render 'new', status: :unprocessable_entity
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
    redirect_to fridge_recipes_path(fridge), status: :see_other
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :ingredients, :cook_time, :prep_time, :cuisine, :photo)
  end

  ##############################################################################

  # create an array with all the ingredients of a recipe

  def take_ingredients(recipe)
    ingredients = []
    recipe.ingredients.split(',').each_with_index do |ingredient, index|
      ingredients << ingredient if index.odd?
    end
    stripped_ingredients = []
    ingredients.each do |ingredient|
      stripped_ingredients << ingredient.strip
    end
    return stripped_ingredients
  end

  # making an array of all the ingredients in the fridge and sorting them by expiration date

  def fridge_ingredients
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
    # return good_recipes
    return recipes
  end

  # give a score to the ingredients

  def score_ingredient(ingredient)
    if ingredient.nil?
      score = 360**-1
    else
      mjd_dif = (ingredient.expiration_date.mjd - Date.today.mjd)
      if mjd_dif.zero?
        score = 2
      elsif mjd_dif.negative?
        score = 0
      else
        score = mjd_dif**-1
      end
    end
    return score * 10
  end

  # order recipes by score

  def order_recipes
    good_recipes = verifying_recipe
    recipe_hash = {}
    good_recipes.each do |recipe|
      recipe_hash[recipe] = score_recipe(recipe)
    end
    recipe_hash_sorted = recipe_hash.sort_by { |_key, value| -value }
    recipe_sorted = []
    puts recipe_hash_sorted
    recipe_hash_sorted.each do |key, _value|
      recipe_sorted << key
    end
    return recipe_sorted
  end

  # give a score to a recipe

  def score_recipe(recipe)
    # fridge = current_user.fridges.find_by(my_fridge: true)
    fridge_ingr = fridge.ingredients.order(:expiration_date)
    #######
    # p "this is my fridge mufasa"
    # fridge.ingredients.order(:expiration_date).each do |element|
    #   p element.name
    # end
    ############
    score = 0
    ingredients = take_ingredients(recipe)
    # p "these are my ingredients"
    # p ingredients
    ingredients.each do |ingredient|
      # p fridge_ingr.find_by(name: ingredient)
      # p ingredient
      # p score_ingredient(fridge_ingr.find_by(name: ingredient))
      # p "score from #{ingredient}"
      # p score
      score += score_ingredient(fridge_ingr.find_by(name: ingredient))
    end
    # p "eeeeeeeeeeeeeeeeeend"
    # p score
    final_score = (score / ingredients.length)
    # p final_score
    return final_score
  end

  def fridge
    @fridge ||= Fridge.find(params[:fridge_id])
  end
end
