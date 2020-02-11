
class Recipe
    attr_accessor :dish, :cook
    @@all = []
    def initialize(dish, cook)
        @dish = dish
        @cook = cook
        @@all << self
    end

    def self.all
        @@all
    end

    def list_ingredients
        ingredients = Ingredient.all.select { |obj| obj.recipe == self}
        ingredients.map { |ing| ing.item}
    end

end
