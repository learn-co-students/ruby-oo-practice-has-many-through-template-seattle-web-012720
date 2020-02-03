#class for Model2 goes here
#Feel free to change the name of the class
class Cook
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def recipe
        Recipe.all.select {|obj| obj.cook == self}
    end

    def buy_ingredients
        Ingredient.new(thing, recipe, self)
    end

    def recipe

    end

end