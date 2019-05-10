require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.each do |song|
      if song.artist == self
        @songs << song
      end
    end
    @songs
  end

  def genres
    Song.all.each do |song|
      if song.artist == self
        @genres << song.genre
      end
    end
    @genres
  end
end
