require_relative '../lib/genre.rb'
require_relative '../lib/song.rb'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song| # only want the artist's own songs
      song.artist == self
    end
  end

  def genres
    songs.map do |song| # only get that artist's songs' genres
      song.genre
    end
  end

end
