class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = Song.new
    song.save
    song
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end
  
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
  song = self.find(" ")
  return song_name
  end
  
  def self.find_or_create_by_name(song_name)
    if song_name = self.new
      return song_name
    else self.new << song_name
  end
  end

  def self.alphabetical
    self.sort_by
  end
  
  def self.new_from_filename
  song = self.create
  
  song.name = song_name
  song.artist_name = 
  song
  end

  def self.create_by_filename

    song.save
  end

  def self.destroy_all
  self.all.clear
  end
end
