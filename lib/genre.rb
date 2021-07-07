class Genre
  attr_accessor :name, :artist, :song
  @@all = []



  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
    ####iterate through all songs an finds the songs that belong to the genre####
  end

  def artists
    songs.map do |song|
      song.artist
    end
    ####iterates over genres collection of songs and collects the ARTISTS#####
  end
end
