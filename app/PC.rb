class PC
    attr_accessor :name, :style, :character_class
     
    @@all = []
    
    def initialize(name, style, character_class)
         @name = name
         @style = style
         @character_class = character_class
         save
    end

    def join_game(title, dm)
        Game.new(title, dm, self)
    end

    def games
        list = Game.all.select {|game| game.player == self}
        list.collect {|game| game.title}
    end

    def dms 
        list = Game.all.select {|game| game.player == self}
        list.collect {|game| game.dm.name}
    end
 
    def save
     @@all << self 
    end
 
    def self.all 
     @@all
    end
 end