
class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count = @@count + 1
    @@genres.push(genre)
    @@artists.push(artist)
  end 
    
  def self.count 
    return @@count
  end 
  def self.genres 
    return @@genres.uniq!
  end 
  def self.artists 
    return @@artists.uniq!
  end 
  def self.genre_count 
    myHash= {}
    @@genres.each do |genre|
      if myHash.key?(genre) == false 
        myHash[genre] = 1
      else 
        x=myHash[genre]
        x=x+1 
        myHash[genre] = x
      end 
    end 
    return myHash
  end
  def self.artist_count 
    myHash= {}
    @@artists.each do |artist|
      if myHash.key?(artist) == false 
        myHash[artist] = 1 
      else 
        x=myHash[artist]
        x=x+1 
        myHash[artist] = x 
      end 
    end 
    return myHash
  end 
end 