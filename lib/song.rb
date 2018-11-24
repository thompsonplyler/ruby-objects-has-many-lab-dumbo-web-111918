require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def self.all
    @@all
  end

end

# enter_sandman = Song.new("Enter Sandman")
# binding.pry
