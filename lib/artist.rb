
#require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    #@artist= artist 
    @@all<< self
    #binding.pry
  end
  
  def add_song(song)
    
    song.artist = self
    
  end
  
  # def add_song_by_name(name)
  #   song = self.new(name)
  #   self.songs << song
  #   song.artist = self
   
  # end
  
  def songs
  Song.all.select do |song| 
    song.artist == self 
    end 
  end
  
    def self.all 
      @@all
    end
    
  
  
  def self.find_or_create_by_name(artist_name)
    artist =  @@all.find{|e| e.name==artist_name}
    if artist
      	return artist
    else
      	return self.new(artist_name)
    end
  end
    
 
   def print_songs
    Song.all.select do |value|
      if value.artist == self
        puts "#{value.name}"
      end
    end
  end
end