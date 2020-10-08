
class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = [] 
    end

    def songs 
        Song.all.select do |track|
            track.artist == self
        end
    end

    def add_song(song)
         @songs << song
         song.artist = self  
    end

    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end

    def self.song_count
        Song.all.count  
    end



end