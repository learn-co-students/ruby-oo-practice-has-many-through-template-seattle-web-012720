require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

soundarya = Cook.new("Soundarya")
kim = Cook.new("Kim")
lucy = Cook.new("Lucy")


pasta = Recipe.new("Italian Pasta", lucy)
salad = Recipe.new("American Salad", soundarya)
sushi = Recipe.new("Japanese Sushi", kim)


salmon = Ingredient.new("Salmon", sushi)
rice = Ingredient.new("Rice", sushi)
seaweed = Ingredient.new("Nori Seaweed", sushi)

tomatoes = Ingredient.new("Tomatoes", pasta)
spinach = Ingredient.new("Spinach", pasta)
dry_pasta = Ingredient.new("Dry Pasta", pasta)

oil = Ingredient.new("Olive oil", salad)
egg = Ingredient.new("Boiled Eggs", salad)
kales = Ingredient.new("Kales", salad)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
