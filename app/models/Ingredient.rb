#class for Model3 goes here
#Feel free to change the name of the class
class Ingredient
    attr_accessor :item, :recipe
    @@all = []

    def initialize(item, recipe)
        @item = item
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

end
