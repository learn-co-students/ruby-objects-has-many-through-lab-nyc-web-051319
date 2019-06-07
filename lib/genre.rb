
require 'pry'
class Genre
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name


    @@all << self
  end




#instance
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

def artists
  Song.all.map do |song|
    song.genre = song.artist
  end
  #binding.pry
end



#class

  def self.all
    @@all
  end


end
