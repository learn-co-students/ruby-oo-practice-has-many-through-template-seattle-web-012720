require_relative "../config/environment.rb"
require_relative "../app/models/Model1"
require_relative "../app/models/Model2"
require_relative "../app/models/Model3"

def reload
  load "config/environment.rb"
end

Clarion = Student.new("Clarion", 12, 1)
Ariana = Student.new("Ariana", 12, 2)
Emma = Teacher.new("Emma")

hist = Cohort.new("Modern Middle East", "History", Emma)
eng = Cohort.new("Fantasy", "English", Emma)
""

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
