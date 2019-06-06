class Song
  
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize (song_name, artist, genre)
  	@@count += 1
  	@name = song_name
  	@artist = artist
  	@genre = genre
  	@@genre_hash = {}
  	@@artist_hash = {}
  	@@artists << @artist
  	@@genres << @genre
  end

  def self.count 
  	@@count
  end

  def self.artists
  	@@artists.uniq
  end

  def self.genres
  	@@genres.uniq
  end

  def self.genre_count
  	@@genres.each {|genre|
  	  if @@genre_hash.include?(genre)
  	  	@@genre_hash[genre] += 1
  	  else
  		@@genre_hash[genre] = 1
  	  end
  	}
  	@@genre_hash
  end
  
  def self.artist_count
  	@@artists.each {|artist|
  	  if @@artist_hash.include?(artist)
  	  	@@artist_hash[artist] += 1
  	  else
  		@@artist_hash[artist] = 1
  	  end
  	}
  	@@artist_hash
  end
end