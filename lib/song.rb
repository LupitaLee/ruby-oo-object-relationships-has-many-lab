require 'pry'

class Song
    attr_accessor :artist, :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist  
            return self.artist.name
        else
      return nil
        end
         # need to return nil if there is no song
    end 
end
