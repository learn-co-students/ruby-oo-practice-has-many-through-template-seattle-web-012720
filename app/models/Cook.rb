#class for Model2 goes here
#Feel free to change the name of the class
class Cook
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def recipes
        cook = Recipe.all.select {|obj| obj.cook == self}
        cook.map {|dd| dd.dish}
    end

    def buy_ingredients(thing, recipe)
        Ingredient.new(thing, recipe, self)
    end

end