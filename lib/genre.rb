class Genre 
    attr_accessor :song, :name, :genre 
  
 @@all = []
  
  def initialize(name)
    @@all << name 
  end 
  
  def self.all
   @@all
  end 
  
  def songs
    Song.all.select { |song| song.genre == self}
  end
  
  def artists
   self.songs.map { |song| song.artist}
  end
  
end 