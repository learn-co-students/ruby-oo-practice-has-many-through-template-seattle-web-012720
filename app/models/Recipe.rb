
class Recipe
    attr_accessor :food, :cook
    @@all = []
    def initialize(food, cook)
        @food = food
        @cook = cook
        @@all << self
    end

    def list_ingredients
        Ingredient.all.select { |obj| obj.recipe == self}
    end

end
