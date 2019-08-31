class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    @songs << song
  end
  
  #def songs 
  #  Song.all.select {|song| song.artist == self}
  #end 
  
  def self.find_or_create_by_name(artist_name)
    if self.all.find { |artist| artist.name == artist_name }
      self.all.find { |artist| artist.name == artist_name }
    else
      self.new(artist_name)
    end 
  end
end 