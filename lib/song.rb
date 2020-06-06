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
    @@all.each do |song|
     return song if song.name == song_name
    end
    nil
  end
  
  def self.find_or_create_by_name(song_name)
  
   self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    self.all.sort do |songA, songB|
      songA.name <=> songB.name
    end
  end
  
  def self.new_from_filename(filename)
    song_data = filename.split(" - ")
    new_song = Song.new
    new_song.artist_name = song_data[0]
    new_song.name = song_data[1].gsub(".mp3", "")
    new_song
  end

  def self.create_from_filename(filename)
     song_data = filename.split(" - ")
    new_song = Song.create
    new_song.artist_name = song_data[0]
    new_song.name = song_data[1].gsub(".mp3", "")
    new_song
  end

  def self.destroy_all
  self.all.clear
  end
end
