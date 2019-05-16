class Genre
  attr_reader :name

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
      song.genre
      #iterates through Songs to find all songs with that genre
    end
  end

  def artists
    songs.map do |song|
      song.artist
      #uses .songs method defined above to find all artists within the genre
    end
  end


end
