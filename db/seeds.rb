require 'json'
require 'open-uri'

Ingredient.destroy_all
puts 'removed'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
string = open(url).read
hash = JSON.parse(string)
array = hash['drinks']
array.each do |minihash|
  ingredient = minihash['strIngredient1']
  Ingredient.create(name: ingredient)
  puts "#{ingredient}"
end
