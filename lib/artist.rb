

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| self == song.artist}
    end

    def new_song(name,genre)
       Song.new(name,self,genre) 
    end

    def genres
        # array = []
        # songs.each do |song|
        #     array << song.genre
        # end
        # array
        songs.map do |song|
            song.genre
        end
    end


end 
