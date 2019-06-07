require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@all = []
	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@all << self
		@@count += 1
		@@artists << artist
		@@genres << genre

	end

	def self.all
		@@all
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
		@@genres.each_with_object({}) {|k, h| h[k] = @@genres.select{|g| g == k }.length}
	end

	def self.artist_count
		@@artists.each_with_object({}) {|k, h| h[k] = @@artists.select{|a| a == k}.length}
	end

end