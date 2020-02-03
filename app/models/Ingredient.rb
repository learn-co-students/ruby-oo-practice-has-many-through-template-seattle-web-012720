#class for Model3 goes here
#Feel free to change the name of the class
class Ingredient
    attr_accessor :thing, :recipe, :cook
    @@all = []

    def intialize(thing, recipe, cook)
        @thing = thing
        @recipe = recipe
        @cook = cook
        @@all < self
    end

end
