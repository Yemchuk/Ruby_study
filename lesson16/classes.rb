#http://phrogz.net/programmingruby/tut_classes.html

class Song
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
	end

	def to_s
		puts "Song: #{@name}--#{@artist} (#{@duration})"
	end

end

aSong = Song.new("Bicylops", "Fleck", 260)
aSong.to_s

class KaraokeSong < Song
	
	def initialize(name, artist, duration, lyrics)
		super(name, artist, duration)
		@lyrics = lyrics
	end

	def to_s
		puts "#{super}" + "[#{@lyrics}]"
	end
end

aSong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
aSong.to_s 