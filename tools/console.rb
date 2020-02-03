require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#example class instances
#Jessica = Patient.new("Jessica Jones", "pain", 40000)
#Steve = Doctor.new("Steve Jones", "Emergency", 400)
#ER = Field.new("Emergency", ["bleeding", "pain", "accident"])


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
