require_relative 'song'
require_relative 'genre'
require_relative 'artist'

jimmers = Artist.new("Jimmers")
rap = Genre.new("rap")

jimmers.new_song("Song one", rap)
puts jimmers
puts rap
puts jimmers.songs
