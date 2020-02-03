#class for Model1 goes here
#Feel free to change the name of the class
class Club
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name, :description
    def initialize(name, description)
        @name = name
        @description = description
        self.class.all << self
    end

    def all_memberships
        Membership.all.select {|membership| membership.club == self}
    end

    def memberlist
        all_memberships.map {|membership| membership.student}
    end

    def email_all_members
        memberlist.map {|student| student.email}
    end

    def self.email_all_clubs_members
        Membership.all.map {|membership| membership.student.email}.uniq
    end

    def find_chairs
        memberlist.select {|student| student.chair_of == self}
    end

    def email_chairs
        find_chairs.map {|chair| chair.email}
    end

    def self.find_all_chairs
        Student.all.select {|student| student.chair_of != nil}
    end

    def self.email_all_chairs
        find_all_chairs.map {|student| student.email}
    end

end
