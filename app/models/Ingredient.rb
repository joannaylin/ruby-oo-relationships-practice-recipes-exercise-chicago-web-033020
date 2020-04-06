
class Ingredient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergies
    Allergy.all.select do |allergy|
      allergy.ingredient == self
    end
  end

  def self.most_common_allergen
    @@all.max do |ingredient_a, ingredient_b|
      ingredient_a.allergies.length <=> ingredient_b.allergies.length
    end
  end

end