require_relative 'Ingredient.rb'
require_relative 'User.rb'

class Allergy
  attr_reader :user, :ingredient
  @@all = []

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end


# isaac (user) is allergic (allergy) to peanuts (ingredient)
