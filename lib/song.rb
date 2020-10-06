class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  attr_reader :name, :artist, :genre
  
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
 @@genres << @genre
 @@artists << @artist
end

def self.count
  @@count
end

def self.genres
  @@genres = @@genres.uniq
end

def self.artists
  @@artists = @@artists.uniq
end


def self.genre_count
  self.genres.map {|i| [i,@@genres.count(i)]}.to_h
end


def self.artist_count
  self.artists.map {|i| [i,@@artists.count(i)]}.to_h
end


  
end

