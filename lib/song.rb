
class Song 
  @@count = 0
  
  def self.count 
    @@count
  end 
  
  
  @@genres = []
  
  def self.genres
    @@genres.uniq
  end
  

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end 
  

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  @@artists = []
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  attr_accessor :name, :artist, :genre
end 

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "Rap")
mask_off = Song.new("Mask Off", "Future", "Rap")
dance_macabre = Song.new("Dance Macabre", "Ghost", "Metal")
if_you_have_ghosts = Song.new("If You Have Ghosts", "Ghost", "Metal")
Song.genres
p Song.artist_count
p Song.genre_count