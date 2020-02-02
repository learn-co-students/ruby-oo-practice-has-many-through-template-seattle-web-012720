require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dan = DM.new("Dan", "Dark Souls")
doug = DM.new("Doug", "Open World")

chris = PC.new("Chris", "Fill the Need", "Ranger")
elaine = PC.new("Elaine", "RP-focused", "Druid")
adam = PC.new("Adam", "Experimental", "Wizard")
jack = PC.new("Jack", "MinMax", "Warlock")

game1 = Game.new("Dozens of Flagons", dan, chris)
game2 = Game.new("Turle Islands", doug, jack)
game3 = Game.new("Flying Castle", dan, elaine)
game4 = Game.new("Volcano", doug, adam)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
