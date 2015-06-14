# code song here

class Song
  attr_accessor :name, :artist
  attr_reader :genre


  def genre=(genre)
    genre.add_song(self)
    @genre = genre
  end
  

end
