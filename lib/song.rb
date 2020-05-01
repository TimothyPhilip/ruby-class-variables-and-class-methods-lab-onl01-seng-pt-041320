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
    @@genres.each_with_index do |genre|
      binding.pry
      if hash[genre].!include?(genre)
         hash[genre] += 1
      else
          hash[genre] 
   end
   end 
   hash
  end 
  
  def self.artists 
    @@artists.uniq
  end
  
end 
