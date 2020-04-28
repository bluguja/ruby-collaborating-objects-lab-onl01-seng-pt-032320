 class Song
  attr_accessor :name, :artist
     @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


def Song.all 
  @@all
  
end

def artist_name=(name) 
 artist = Artist.all.find { |value| value.name==name }
 if artist
   self.artist=artist
   else
     art = Artist.new(name)
     self.artist = art
   end
end

  def self.new_by_filename(file_name)
        song_name = file_name.split(" - ")[1]
        artist_name = file_name.split(" - ")[0]
        song = Song.new(song_name)
        #song.name = song_name      # what id this code supp
        #song.artist = artist_name
        song
    end
end




