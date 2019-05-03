class Genre 
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self 
  end 
  
  def songs 
    @songs = Song.all.select{|x| x.genre.name == self.name} 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artists
    @artists = self.songs.collect{|x| x.artist} 
  end 
  
end 