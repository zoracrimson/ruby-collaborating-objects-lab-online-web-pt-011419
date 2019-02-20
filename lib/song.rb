require 'pry'

class Song
  attr_accessor :name, :artist, :new_by_filename

  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    song_name = file[1]
    artist_name = file[0]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end 

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end 

end  


