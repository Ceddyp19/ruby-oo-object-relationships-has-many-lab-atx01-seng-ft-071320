class Song
    attr_accessor :name, :artist 
    @@all = [] 

    def self.all
      @@all
    end


    def initialize(name)
        @name = name
        self.class.all << self 
    end

    def artist_name 
        @@all.find do |song|
            if song.artist == nil
                  return nil 
            elsif song.artist == self.artist
                  return song.artist.name
            end
        end
    end


end