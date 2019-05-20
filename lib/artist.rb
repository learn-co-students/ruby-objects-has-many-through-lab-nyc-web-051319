require 'pry'

class Artist
  attr_accessor :genre, :song, :artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    ####knows artist instances####
    @@all
  end



  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
    ####iterates through /ALL/ songs and SELECTS songs that belong to that artist####

  end

  def genres
    songs.map do |song|
      song.genre
    end
    ###iterates over THIS artist's songs and COLLECTS the genre of each song####
  end
end
