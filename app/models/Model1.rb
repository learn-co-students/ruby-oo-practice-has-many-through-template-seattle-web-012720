#class for Model1 goes here
#Feel free to change the name of the class
class Doctor

    attr_accessor :name, :field, :cost

    @@all = []
    def initialize(name, field, cost)
        @name = name 
        @field = field 
        @cost = cost
        @@all << self 
    end

    #searches the Doctor class for a doctor that is within the budget and treats the ailment
    def self.find(ailment, budget)
        field = Field.lookup(ailment)
        if field 
            doctors = @@all.select {|doctor| 
            doctor.cost <= budget && field.include?(doctor.field) }.collect {
            |doctor| doctor.name if doctor.name}
            if doctors 
                doctors 
            else 
                "No doctors match your budget"
            end 
        else 
            "Unable to find a doctor that treats your ailment(s)"
        end
    end

end
