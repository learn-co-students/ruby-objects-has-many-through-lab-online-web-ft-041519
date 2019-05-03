require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end 

  def new_song(song, genre)
    new_song = Song.new(song, self, genre)
    binding.pry
    self.songs << new_song 
    new_song 
  end 
  
  
  
end
