class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end

#class Artist

  #attr_reader :name

  #@@all=[]

  #def initialize(name)
    #@name=name
    #@songs=[]
  #end

  #def name=(name)
    #@name=name
  #end

  #def songs
    #@songs
  #end

  #def add_song(song)
    #song.artist=self
    #@songs<<song
  #end
#
  #def self.all
    #@@all
  #end

  #def save
    #@@all<<self
  #end

  #def find_or_create_by_name
  #end
