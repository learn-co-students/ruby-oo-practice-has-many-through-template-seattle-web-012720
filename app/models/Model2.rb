#class for Model2 goes here
#Feel free to change the name of the class
class Patient

    attr_accessor :name, :ailment, :income 

    @@all = [] 

    def initialize(name, ailment, income)
        @name = name 
        @ailment = ailment
        @income = income 
        @@all << self 
    end

    def budget 
        @income * 0.01
    end

    def find_doctor
        Doctor.find(self.ailment, self.budget)
    end

    def view_appointments
        Appointment.lookup(self)
    end

    def am_i_free?(date, time)
        !self.view_appointments.any? {|appointment| appointment.date == date && appointment.time == time }
    end

    def make_appointment(date, time)
        doctor = self.find_doctor
        if self.am_i_free?(date, time) 
            if doctor && Appointment.free?(date, time, doctor)
                Appointment.new(date, time, doctor, self)
            else
                "There are currently no doctors available"
            end 
        else 
            "You already have an appointment at this time!"
        end
    end

end
