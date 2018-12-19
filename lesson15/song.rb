class Album
	attr_reader :name
	attr_reader :songs
	attr_reader :artist

	def initialize artist, name
		@artist = artist
		@name = name
		@songs = []
	end

	def add_song song
		@songs << song
	end
end

class Artist
	attr_reader :name

	def initialize artist
		@name = artist
	end
end

class Song
	#name, duration
	attr_reader :name, :artist, :duration

	def initialize name, artist, duration
		@name = name
		@artist = artist
		@duration = duration
	end
end

artist = Artist.new("Scooter")

album = Album.new artist.name, 'Fire'

song1 = Song.new 'Fire', artist.name, 5
song2 = Song.new 'Maryana', artist.name, 6
song3 = Song.new 'Fish', artist.name, 8

album.add_song song1
album.add_song song2
album.add_song song3

puts "#{album.artist} - #{album.name} - #{album.songs[1].name}"
