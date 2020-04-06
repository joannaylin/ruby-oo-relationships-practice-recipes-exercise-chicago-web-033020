class Recipe
  attr_accessor :name
  @@all = []

  def initialize(name)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
  end

  def users
  end

  def ingredients
  end

  def allergens
  end

  def add_ingredients(ingredients_array)
  end


end
