require_relative 'Ingredient.rb'
require_relative 'User.rb'

class Allergy
  attr_reader :user, :ingredient
  @@all = []

  def initialize(user, ingredient)
    @user = user
    user.all_allergies << self
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

end


