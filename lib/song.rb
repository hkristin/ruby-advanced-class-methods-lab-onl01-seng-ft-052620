class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create(name) 
    person = self.new
    person.name = name
    @@all << person

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
