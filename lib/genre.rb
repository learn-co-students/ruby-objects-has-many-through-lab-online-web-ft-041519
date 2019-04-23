class Genre
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    self.songs.collect(&:artist)
  end
end
