#class for Model2 goes here
#Feel free to change the name of the class
class Student
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name, :year, :email, :chair_of
    def initialize(name, year, email)
        @name = name
        @year = year
        @email = email
        @chair_of = nil
        self.class.all << self
    end

    def join_club(club)
        Membership.new(self, club)
    end

    def chair_club(club)
        if self.find_all_clubs.include?(club) && self.chair_of == nil
            self.chair_of = club
        end
    end

    def find_memberships
        Membership.all.select {|membership| membership.student == self}
    end

    def find_all_clubs
        find_memberships.map {|membership| membership.club}
    end

    def leave_club(club)
        Membership.all.delete_if {|membership| membership.club == club && membership.student == self}
    end

    def leave_chair
        self.chair_of = nil
    end

end
