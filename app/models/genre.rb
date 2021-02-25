class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_string_array = []
    Artist.all.map do |artist|
      artist_string_array << artist.name
    end
    artist_string_array
  end

end
