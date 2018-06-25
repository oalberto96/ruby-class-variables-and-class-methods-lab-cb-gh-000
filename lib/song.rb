

class Song

  @@count = 0
  @@artists = {}
  @@genres = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    self.artist(artist)
    @@count += 1

  end

  def self.count
    @@count
  end

  def self.artists
    artists.keys
  end

  def self.genres
  end

  def self.genres_count
  end

  def artist=(artist)
    @artist = artist
    if artists[artist] == nil
      artists[artist] = 1
    else
      artists[artist] += 1
    end
  end

end
