class Song 
  attr_accessor :song, :artist, :genre
  
  @@all = []
  
  def initialize(song_name, artist, genre)
    @song = song_name
    @artist = artist
    @genre = genre
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

  
end 