require 'pry'

class Artist
  attr_accessor :name, :songs, :genres

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
    self.songs << new_song 
    self.genres << genre
    self.songs << genre 
    new_song 
  end 

  
end
