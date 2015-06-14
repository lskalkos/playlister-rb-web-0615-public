# code genre here

class Genre
  attr_accessor :name
  attr_reader :songs

  @@genres = []

  def initialize
    @songs = []
    @artists = []
    @@genres << self
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.length
  end

  def self.reset_genres
    @@genres = []
  end  

  def add_song(song)
    @songs << song
  end    

  def artists
    @artists.uniq
  end

  def add_artist(artist)
    @artists << artist
  end


end