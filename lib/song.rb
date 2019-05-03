class Song 
  attr_accessor :song, :artist, :genres 
  
  @@all = []
  
  def initialize(song_name, artist, genre)
    @song = song_name
    @artist = artist
    @genres = genre
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def genre 
    self.genre 
  end 
  
  def artist 
    self.artist 
  end 
  
end 