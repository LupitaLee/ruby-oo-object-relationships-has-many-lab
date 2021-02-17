require 'pry'

class Artist
    attr_accessor :name
    @@all = []
    
    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end

    def songs
        # binding.pry
        Song.all.select {|song| song.artist == self} #  has many songs (
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end
    def self.all
        @@all
    end


    #   def add_song_by_name(name)
    #     self.artist.name
    #   end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end 

    def self.song_count
        total_count = 0
        @@all.each do |artist|
       total_count += artist.songs.count
        end
        total_count
    end
end

