require "pry"

class Artist
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    @@all.detect do |x|
      x.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
   else
   end

  def self.find_or_create_by_name(name)
    if @@all.detect do |x|
         x.name == name
      end
    else
    self.new(name)
   end
 end

  def print_songs
    @songs.each do |x|
      puts x.name

    end
  end


end
end
