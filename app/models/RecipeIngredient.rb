require_relative 'Recipe.rb'
require_relative 'Ingredient.rb'

class RecipeIngredient

  @@all = []
  attr_reader :ingredient, :recipe

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    self.class.all << self
  end

  def self.all
    @@all
  end

end