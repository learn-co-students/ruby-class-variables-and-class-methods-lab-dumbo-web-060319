require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  # returns the number of songs per genre
  # {"rap" => 5, "rock" => 1, "country" => 3}
  @@genre_count = {}

  # returns the number of songs per artist
  #{"Beyonce" => 17, "Jay-Z" => 40}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name; @artist = artist; @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
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
    counts = Hash.new(0)
    @@genres.each { |genre| counts[genre] += 1 }
    return counts
  end

  def self.artist_count
    counts = Hash.new(0)
    @@artists.each { |artist| counts[artist] += 1 }
    return counts
  end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

p hit_me.name
p hit_me.artist
p hit_me.genre

p Song.artists
p Song.genres

p Song.genre_count

p Song.artist_count
