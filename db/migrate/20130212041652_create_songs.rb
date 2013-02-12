class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :version
      t.string :tuning
      t.string :capo
      t.text :lyrics
      t.text :lyrics_and_chords
      t.string :original_album
      t.string :original_year
      t.string :version_album
      t.string :version_year
      t.string :special_notes
      t.string :chords
      t.string :parts
      t.string :url

      t.timestamps
    end
  end
end
