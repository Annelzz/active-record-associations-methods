class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    abc = self.songs
    abc.count
  end

  def artist_count
    # return the number of artists associated with the genre
    abc = self.artists
    abc.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    abc = self.artists
    abc.collect do |a|
      a.name
    end
  end
end
