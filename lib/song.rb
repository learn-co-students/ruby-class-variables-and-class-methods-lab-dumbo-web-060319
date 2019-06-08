class Song
    attr_accessor :name, :artist, :genre
 
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

   @@count = 0
   @@artists = []
   @@genres = []

   def self.count
    @@count
   end

   def self.artists
    @@artists.uniq
   end

   def self.genres
    @@genres.uniq
   end

   def self.artist_count
    artist_storage = {}
    @@artists.each |artist|
        if artist_storage[artist]
            artist_storage[artist] += 1
        else
            artist_storage[artist] = 1
        end
        artist_storage
    end
   end

   def self.genre_count
    genre_storage = {}
    @@genres.each do |genre|
        if genre_storage[genre] 
            genre_storage[genre] += 1
        else
            genre_storage[genre] = 1
        end
    end
    genre_storage
  end

end
        