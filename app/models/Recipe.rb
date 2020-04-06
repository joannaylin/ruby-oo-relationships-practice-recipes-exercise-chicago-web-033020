class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    # most carded recipe wins
    # each recipe has many recipecards 
    # recipecard instances belong to one recipe each
    # can count how many recipecards each recipe has
    # sort based on that^^ 
    self.all.max do |recipe_a, recipe_b|
      recipe_a.recipe_cards.length <=> recipe_b.recipe_cards.length
    end
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    recipe_cards.map do |card|
      card.user 
    end
  end

  def ingredients
    # joined through a many to many 
    # go through join first 
    self.recipe_ingredients.collect do |r_i|
      r_i.ingredient
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |r_i|
      r_i.recipe == self
    end
  end


  def allergens
    User.all_allergens.select do |user|
      user.name == self.ingredients
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
  end


end
