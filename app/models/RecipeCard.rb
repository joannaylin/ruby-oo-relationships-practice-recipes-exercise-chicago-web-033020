require_relative 'User.rb'
require_relative 'Recipe.rb'

class RecipeCard
  attr_reader :date, :rating, :user, :recipe
  @@all = []

  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating.to_i
    @user = user
    user.all_recipe_cards << self # this pushes or shovels into the @all_recipe_cards
    @recipe = recipe
    @@all << self
  end

  def self.all
    @all
  end



end