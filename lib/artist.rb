require_relative './findable.rb'

class Artist 
  
  extend Concerns::Findable
  
  attr_accessor :name, :songs, :genre
  
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all
    @songs = []
  end

  def self.all 
    @@all 
  end

  def self.destroy_all
    @@all.clear
  end

  def save 
    @@all << self
  end

  def self.create(name) 
    artist = self.new(name)
    artist.save
    artist
  end
  
  def add_song(song)
    song.artist = self unless song.artist == self
    @songs << song unless @songs.include?(song)
  end
  
  def genres 
    songs.collect{|song| song.genre}.uniq
  end
  
  
end