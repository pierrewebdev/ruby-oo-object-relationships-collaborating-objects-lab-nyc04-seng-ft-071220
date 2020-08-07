class Song
  attr_accessor :name, :artist
  
  #class variable
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end
  
  def self.all
    @@all
    #binding.pry
  end
  
  def self.new_by_filename(filename)
   
    parsed_file_name = filename.split("-")
    new_song = Song.new(parsed_file_name[1].strip)
    new_artist = Artist.new(parsed_file_name[0].strip)
    new_song.artist = new_artist
    new_song
  end
  
  def artist_name=(artist)
    #artist_search = @@all.find {|song|song.artist = artist}
    
    if !self.artist
      artist = Artist.new(artist)
      self.artist = artist
      binding.pry
    else
      Artist.all.find{|artist|artist.name == artist}
    end
    
      
    #binding.pry
  end
  
end #end of Song class