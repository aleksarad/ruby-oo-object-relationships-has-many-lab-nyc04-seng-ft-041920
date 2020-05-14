require_relative 'song.rb'

class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs 
        Song.all
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end

# travis_scott = Artist.new("Travis Scott")
# travis_scott.add_song("Drugs You Should Try It")
# antidote =  Song.new("Antidote")
# travis_scott.add_song(antidote)

# p travis_scott.songs


