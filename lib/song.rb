class Song
    
    attr_accessor :name ,:artist,:genre
    @@count = 0 
    @@genres = []
    @@artists = []

    def initialize(name, artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@artists << artist
        @@genres  << genre 
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
        genre_count = Hash.new(0)
        @@genres.each {|g| genre_count[g] += 1}
        genre_count
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|a| artist_count[a] += 1}
        artist_count
    end

### similar methods completed with time 
## tried to keep as clean as i could 
end 