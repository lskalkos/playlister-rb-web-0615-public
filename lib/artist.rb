# code artist here

class Artist
  attr_accessor :name
  attr_reader :songs, :genres

  @@artists = []


  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.length
  end  

  def songs=(songs)
    @songs = songs
  end

  def add_song(song)
    @songs << song
    if song.genre
      @genres << song.genre 
      song.genre.add_artist(self)
    end
  end

end