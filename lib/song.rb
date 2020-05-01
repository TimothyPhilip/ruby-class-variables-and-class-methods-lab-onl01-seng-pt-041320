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
      number = 1
    @@genres.each do |genre_list|
      if !include?(genre_list)
         hash[genre_list] += 1
   end
   end 
   hash
  end 
  
  def self.artists 
    @@artists.uniq
  end
  
end 
