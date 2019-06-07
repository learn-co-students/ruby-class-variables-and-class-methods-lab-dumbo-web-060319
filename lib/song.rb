class Song
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        genres_num = {}      
        @@genres.each do |genre|
            genre_count = @@genres.count(genre)
            if genres_num.has_key?(genre)
                genres_num[genre] << genre_count
            else genres_num[genre] = genre_count
            end
        end
        return genres_num
    end

    def self.artist_count
        artists_songs = {}
        @@artists.each do |artist|
            artist_count = @@artists.count(artist)
            if artists_songs.has_key?(artist)
                artists_songs[artist] << artist_count
            else artists_songs[artist] = artist_count
            end
        end
        return artists_songs
    end

end