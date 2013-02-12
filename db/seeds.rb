require 'csv'

Song.destroy_all

CSV.foreach("public/songs.csv") do |row|
  #Artist*,Title*,Version,Tuning*,Capo,Lyrics,Lyrics + Chords*,Original Album,Original Year,Version Album,Version Year,Special Notes,Chords,Key,Parts,URL
  Song.create(artist: row[0], title: row[1], version: row[2], tuning: row[3], capo: row[4],
              lyrics: row[5], lyrics_and_chords: row[6], original_album: row[7], original_year: row[8],
              version_album: row[9], version_year: row[10], special_notes: row[11], chords: row[12], parts: row[14], url: row[15])
end

puts 'All songs uploaded!'