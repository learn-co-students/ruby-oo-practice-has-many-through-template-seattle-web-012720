#class for Model3 goes here
#Feel free to change the name of the class
class Membership
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :student, :club
    def initialize(student, club)
        @student = student
        @club = club
        self.class.all << self
    end
  
end
