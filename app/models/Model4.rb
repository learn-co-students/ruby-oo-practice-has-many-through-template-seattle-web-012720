class Field 

    @@all = []

    attr_accessor :name, :ailments

    def initialize(name, ailments=[])
        @name = name 
        @ailments = ailments
        @@all << self
    end

    #finds all fields that treat theFie ailment, returns their names
    def self.lookup(ailment)
        @@all.select {|field| 
        field.ailments.include?(ailment) }.collect {|field|
        field.name if field.name }
    end

end
