class DM
   attr_accessor :name, :style
    
   @@all = []
   
   def initialize(name, style)
        @name = name
        @style = style
        save
   end

   def create_game(title, player)
      Game.new(title, self, player)
   end

   def games
     list = Game.all.select {|game| game.dm == self}
     list.collect {|game| game.title}
   end

   def players
    list = Game.all.select {|game| game.dm == self}
    list.collect {|game| game.player.name}
   end


   def save
    @@all << self 
   end

   def self.all 
    @@all
   end
end