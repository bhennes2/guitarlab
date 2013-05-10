class Song < ActiveRecord::Base
  attr_accessible :artist, :capo, :chords, :lyrics, :lyrics_and_chords, :original_album, :original_year, :parts,
          :notes, :title, :tuning, :url, :version_artist, :version_album, :version_year, :spotify_url
          
  def artist_first_letter_filter
    first_character = artist.slice(0)
    /\p{Digit}/.match(first_character).present? ? '#' : first_character
  end
  
end
