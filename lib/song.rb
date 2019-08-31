class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def artist=(artist)
    artist.name = self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 