require 'open-uri'
require 'json'
puts 'Removing existing ingredients'
Ingredient.destroy_all
puts 'Adding new ingredients'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
filepath = open(url).read
drinks = JSON.parse(filepath)
ingredients = drinks['drinks']
ingredients.each do |ingredient|
  new_ingredient = Ingredient.create(name: "#{ingredient['strIngredient1']}")
  puts "#{new_ingredient.name} added to database"
end
puts "New ingredients succesfully added"
