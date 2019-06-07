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

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        counter = 1
        genre_hash = {}
        @@genres.each do |genre|
            if !genre_hash.has_key?(genre)
                genre_hash[genre] = counter
            else
                genre_hash[genre] = counter + 1    
            end
        end
        genre_hash
     end

     def self.artist_count
        counter = 1
        artist_hash = {}
        @@artists.each do |artist|
            if !artist_hash.has_key?(artist)
                artist_hash[artist] = counter
            else
                artist_hash[artist] = counter + 1    
            end
        end
        artist_hash
      end

end