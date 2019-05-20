class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end

  def self.all
    ####knows about song instances###
    @@all
  end


end
