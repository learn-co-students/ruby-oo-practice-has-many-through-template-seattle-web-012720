require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ben = Student.new("Ben", 2010, "ben@gmail")
ian = Student.new("Ian", "20leftusfoever", "ian@gmail")
diana = Student.new("Diana", 2011, "diana@gmail")
monica = Student.new("Monica", 2011, "monica@gmail")
joe = Student.new("Joe", 2011, "joe@gmail")

dmc = Club.new("DMC", "Go climbing")
ledyard = Club.new("Ledyard", "Go boating")
cnt = Club.new("Cabin and Trail", "Go hiking")
wsc = Club.new("Winter Sports Club", "Go skiing")

ben.join_club(wsc)
ben.join_club(dmc)
ben.join_club(ledyard)
diana.join_club(dmc)
diana.join_club(wsc)
ian.join_club(dmc)
monica.join_club(cnt)
joe.join_club(cnt)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
