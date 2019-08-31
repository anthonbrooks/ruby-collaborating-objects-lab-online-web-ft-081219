class MP3Importer 
  
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end
  
  def files 
    
  end 
  
  def import 
    file.each { |file| Song.new_by_filename }
  end 
end