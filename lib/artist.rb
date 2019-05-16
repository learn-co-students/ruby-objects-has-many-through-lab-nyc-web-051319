class Artist
  attr_reader :name

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
    #given a new name and genre, creates a new song in the Song class by that artist
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      #iterates through Songs to find all songs by that artist. "Artist has many songs"
    end
  end

  def genres
    songs.map do |song|
      song.genre
      #uses .songs method defined above to find all genres attributed to that artist
    end
  end

end
