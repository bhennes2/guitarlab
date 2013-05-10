class ChangeVersionNameOnSongs < ActiveRecord::Migration
  
  def change
    rename_column :songs, :version, :version_artist
  end
  
end
