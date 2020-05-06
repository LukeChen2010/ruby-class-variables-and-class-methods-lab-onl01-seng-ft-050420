class Song
  
  attr_accessor :name, :artist, :genre, :count, :artists, :genres
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist 
    @@genres << genre 
  end
  
  def self.count
    return @@count
  end
  
  def self.genres
    unique_genres = []
    
    @@genres.each {|genre| unique_genres << genre if !unique_genres.include?(genre)}
    
    return unique_genres
  end
  
  def self.artists
    unique_genres = []
    
    @@genres.each {|genre| unique_genres << genre if !unique_genres.include?(genre)}
    
    return unique_genres
  end
  
end