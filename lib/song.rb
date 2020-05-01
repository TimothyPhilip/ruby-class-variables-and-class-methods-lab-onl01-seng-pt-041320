require 'pry'
class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count 
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
      hash = {}
    @@genres.each do |genre_list|
      if !include?(genre_list) = true 
         hash[genre_list]
   end
   end 
   hash
  end 
  
  def self.artists 
    @@artists.uniq
  end
  
end 
