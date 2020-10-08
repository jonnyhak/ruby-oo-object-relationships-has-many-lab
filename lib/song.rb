class Song
    attr_accessor :name, :artist
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @artist = artist 
    end

    def self.all
        @@all 
    end

    def artist_name
        self.artist.name   
    end
    # returns nil if the song does not have an artist


end