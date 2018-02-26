class Song
  attr_accessor :name, :artist, :genre
    @@genres = []
    @@artists = []
    @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    @@genres.sort.each_with_object({}) do |genre, genre_hash|
      genre_hash[genre] ||= 0
      genre_hash[genre] += 1

  end
end
end
