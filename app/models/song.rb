class Song < ActiveRecord::Base
  attr_accessible :artist, :capo, :chords, :lyrics, :lyrics_and_chords, :original_album, :original_year, :parts,
          :notes, :title, :tuning, :url, :version, :version_album, :version_year, :spotify_url
end
