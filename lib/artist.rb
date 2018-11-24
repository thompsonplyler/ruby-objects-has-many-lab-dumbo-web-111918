require 'pry'
require_relative 'song.rb'
class Artist
  attr_accessor :name
  @@all = []
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    count = 0
    @@all.each do |artist|
      count += artist.songs.size
    end
    count
  end

end

# metallica = Artist.new("Metallica")
# guns_n_roses = Artist.new("Guns N Roses")
# cake = Artist.new("Cake")
#
# metallica.add_song_by_name("Enter Sandman")
# metallica.add_song_by_name("Sad But True")
# metallica.add_song_by_name("Master of Puppets")
# metallica.add_song_by_name("Ride the Lightning")
# guns_n_roses.add_song_by_name("November Rain")
# guns_n_roses.add_song_by_name("Don't Cry")
# guns_n_roses.add_song_by_name("You Could B Mine")
# cake.add_song_by_name("Sheep Go To Heaven")
# cake.add_song_by_name("The Distance")
# cake.add_song_by_name("Meanwhile, Rick James...")
#
# Artist.song_count
