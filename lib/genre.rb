class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all do |song|
      song.genre = self
    end

  end

  def artists
    Song.all.each do |song|
      if song.genre == self
        @artists << song.artist
      end
    end
    @artists
  end

end
