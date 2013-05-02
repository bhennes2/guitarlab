class ChangeSpecialNotesOnSong < ActiveRecord::Migration
  
  def change
    remove_column :songs, :special_notes
    add_column :songs, :notes, :text
  end

end
