describe "Song" do
  it "can initialize a song" do
     # implement this spec
    expect(Song.new).to be_an_instance_of(Song)    
  end

  it "can have a name" do
     # implement this spec
     song = Song.new
     song.name = "Twinkle Twinkle Little Star"
      expect(song.name).to eq("Twinkle Twinkle Little Star")
  end

  it "can have a genre" do
     # implement this spec
     song = Song.new
     genre = Genre.new
     genre.name = "House"
     song.genre = genre
     expect(song.genre.name).to eq("House")
  end

  it "has an artist" do
     # implement this spec
      artist = Artist.new
      artist.name = "Ke$ha"
      song = Song.new
      song.artist = artist
      expect(song.artist.name).to eq("Ke$ha")

  end
end
