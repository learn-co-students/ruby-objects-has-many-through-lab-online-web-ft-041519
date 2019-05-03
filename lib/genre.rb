class Genre 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end 
  
  def songs 
    self.songs << Song.all
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists
    self.artist << Song.artist
  end 
  
end 