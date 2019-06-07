require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@genres << genre 
        @@artists << artist 
    end

    def self.count
        @@count 
    end

    def self.artists
        artists_array = []
        @@artists 
    end


    def self.artists
        artists_array = @@artists.uniq!
        artists_array 
    end


    def self.genres
        genre_array = @@genres.uniq!
        genre_array  
    end

    def self.genre_count
       genre_hash = Hash.new(0)
       @@genres.each {|genre| genre_hash[genre] += 1}
        return genre_hash 

    end

    def self.artist_count 
        artist_hash = Hash.new(0)
        @@artists.each { |artist| artist_hash[artist] += 1 }
         return artist_hash
      end

end