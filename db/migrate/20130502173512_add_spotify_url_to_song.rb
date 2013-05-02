class AddSpotifyUrlToSong < ActiveRecord::Migration
  def change
    add_column :songs, :spotify_url, :string
  end
end
