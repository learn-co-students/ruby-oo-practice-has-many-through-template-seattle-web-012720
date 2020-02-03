#class for Model3 goes here
#Feel free to change the name of the class
class Appointment

    attr_accessor :date, :time, :doctor, :patient 

    @@all = [] 

    def initialize(date, time, doctor, patient)
        @date = date 
        @time = time 
        @doctor = doctor 
        @patient = patient 
        @@all << self 
    end 

    def self.free?(date, time, doctor)
        !@@all.any? {|appointment| appointment.date == date && appointment.time == time && appointment.doctor == doctor }
    end

    def self.lookup(patient)
        @@all.select {|appointment| appointment.patient == patient }
    end

end
