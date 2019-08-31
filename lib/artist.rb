class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def name=(name)
    @name = name
  end 
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    @songs << song
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name
    
  end
end 