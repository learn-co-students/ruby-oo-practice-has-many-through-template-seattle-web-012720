class Game
    attr_accessor :title, :dm, :player
     
    @@all = []

    def initialize(title, dm, player)
      @title = title
      @dm = dm
      @player = player
      save
    end

    def save
      @@all << self 
    end
 
    def self.all 
      @@all
    end
 end