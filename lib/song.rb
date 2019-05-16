class Song
  attr_reader :name, :artist, :genre

  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    #ORDER IS IMPORTANT, need to always call these methods in this order

    @@all << self
  end

  def self.all
    @@all
  end

end
