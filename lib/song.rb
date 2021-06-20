class Song

@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@count += 1
        @@genres << genre
        

    end

    def self.artists
       @@artists.uniq!
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count  #returns the count
    end

    def self.genre_count

        genre_count = Hash.new(0) #creates a new variable that is a hash and sets value of hash to 0
        @@genres.each {|genre| genre_count[genre] += 1} #adds value of one to hash each time  the hashes match
        genre_count #returns hash variable back to hash
    end

    def self.artist_count 
        # artist_count = Hash.new(0)
        # @@artists.each{|artist| artist_count[count] +=1}
        @@artists.count
    end
end