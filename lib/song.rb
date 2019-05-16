#require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  #def genre
  #  Genre.all.select do |genre|
  #    genre.song == self
  #  end
  #end
#binding.pry
end
