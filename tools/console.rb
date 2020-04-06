require_relative '../config/environment.rb'

soup = Recipe.new("Chicken Noodle Soup")
pizza = Recipe.new("Pizza")
salad = Recipe.new("Salad")

al = User.new("Al")
pat = User.new("Pat")


RecipeCard.new(al, soup)
RecipeCard.new(pat, soup)
RecipeCard.new(pat, pizza)
RecipeCard.new(pat, salad)

Allergy.new(al, pizza)

binding.pry
