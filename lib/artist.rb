require 'pry'

class Artist
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name


    @@all <<  self
  end



#instance

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      #binding.pry
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end

#class

  def self.all
    @@all
  end


end
#
# jay_z = Song.new("Hello", "sad")
